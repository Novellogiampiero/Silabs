/***************************************************************************//**
 * @file main.c
 * @brief Main file for the proprietary_trx example.
 *******************************************************************************
 * # License
 * <b>Copyright 2024 Silicon Laboratories Inc. www.silabs.com</b>
 *******************************************************************************
 *
 * SPDX-License-Identifier: Zlib
 *
 * The licensor of this software is Silicon Laboratories Inc.
 *
 * This software is provided 'as-is', without any express or implied
 * warranty. In no event will the authors be held liable for any damages
 * arising from the use of this software.
 *
 * Permission is granted to anyone to use this software for any purpose,
 * including commercial applications, and to alter it and redistribute it
 * freely, subject to the following restrictions:
 *
 * 1. The origin of this software must not be misrepresented; you must not
 *    claim that you wrote the original software. If you use this software
 *    in a product, an acknowledgment in the product documentation would be
 *    appreciated but is not required.
 * 2. Altered source versions must be plainly marked as such, and must not be
 *    misrepresented as being the original software.
 * 3. This notice may not be removed or altered from any source distribution.
 *
 ******************************************************************************/

// -----------------------------------------------------------------------------
// Includes

#include <zephyr/kernel.h>
#include <zephyr/device.h>
#include <zephyr/drivers/gpio.h>
#include <zephyr/sys/util.h>
#include <zephyr/sys/printk.h>
#include <inttypes.h>
#include <zephyr/shell/shell.h>
#include <zephyr/logging/log.h>
#include "rail.h"
#include "rail_types.h"
#include "pa_conversions_efr32.h"
#include "sl_rail_util_init.h"
#include "app_gpio.h"
#include "app_rail.h"
#include "main.h"



// ADDED DA NOVELLO
#if defined(SL_CATALOG_KERNEL_PRESENT)
  #include "sl_system_kernel.h"
#else // SL_CATALOG_KERNEL_PRESENT
  #include "sl_system_process_action.h"
#endif // SL_CATALOG_KERNEL_PRESENT
/// vedi se va bene da sistemare !!!!!
#include "sl_event_handler.h"

void sl_system_process_action(void)
{
 /// TOADD sl_platform_process_action();
 /// TO ADD sl_service_process_action();
 /// TO ADD sl_stack_process_action();
 ////TO ADD sl_internal_app_process_action();
}

// -----------------------------------------------------------------------------
// Macros and Typedefs
LOG_MODULE_REGISTER(trx_app_log, LOG_LEVEL_INF);

/* List of application states */
enum radio_state {
	INIT,
	IDLE,
	SEND,
	SENT,
	RECEIVE,
	ERROR
};

// -----------------------------------------------------------------------------
// Static Function Declarations

static void init_run(void *o);
static void idle_run(void *o);
static void send_run(void *o);
static void sent_run(void *o);
static void received_run(void *o);
static void error_run(void *o);

// -----------------------------------------------------------------------------
// Global Variables

//
///////////static struct gpio_dt_spec led = GPIO_DT_SPEC_GET_OR(DT_ALIAS(led0), gpios,{0});

struct s_prop_var s_sl_machine = {.led1 = GPIO_DT_SPEC_GET_OR(DT_ALIAS(led1), gpios, {0}),
				  .led0 = GPIO_DT_SPEC_GET_OR(DT_ALIAS(led0), gpios, {0}),
				  .button1 = GPIO_DT_SPEC_GET_OR(DT_ALIAS(sw1), gpios, {0}),
				  .button0 = GPIO_DT_SPEC_GET_OR(DT_ALIAS(sw0), gpios, {0})};


//------------------------------------------------------------------
// Static Variables

static const struct smf_state radio_states[] = {
	[INIT] = SMF_CREATE_STATE(NULL, init_run, NULL,NULL,NULL),
	[IDLE] = SMF_CREATE_STATE(NULL, idle_run, NULL,NULL,NULL),
	[SEND] = SMF_CREATE_STATE(NULL, send_run, NULL,NULL,NULL),
	[SENT] = SMF_CREATE_STATE(NULL, sent_run, NULL,NULL,NULL),
	[RECEIVE] = SMF_CREATE_STATE(NULL, received_run, NULL,NULL,NULL),
	[ERROR] = SMF_CREATE_STATE(NULL, error_run, NULL,NULL,NULL),

};
 
/******************************************************************************
 * Application state machine, called infinitely
 *****************************************************************************/
void app_process_action(RAIL_Handle_t rail_handle)
{
#ifdef NOVELLO
  // Handle errors if pending
  if (rail_error) {
    rail_error = false;
    state = S_ERROR;
  }

  switch (state) {
    case S_IDLE:
      if (start_rx) {
        // Start receiving upon entering the state
        start_rx = false;
        start_receiving(rail_handle);
      } else if (rail_packet_received) {
        // Go to RECEIVE state
        rail_packet_received = false;
        state = S_RECEIVE;
#if defined(SL_CATALOG_KERNEL_PRESENT)
        app_task_notify();
#endif
      } else if (tx_requested) {
        // Transition to TRANSMIT if requested
        state = S_TRANSMIT;
#if defined(SL_CATALOG_KERNEL_PRESENT)
        app_task_notify();
#endif
      }
      break;
    case S_TRANSMIT:
      // Send packet upon entering state
      if (tx_requested) {
        tx_requested = false;
        handle_packet_transmission(rail_handle);
      } else if (rail_packet_sent) {
        app_log_info("Packet has been sent\n");
        state = S_IDLE;
        rail_packet_sent = false;
#if defined(SL_CATALOG_KERNEL_PRESENT)
        app_task_notify();
#endif
      }
      break;
    case S_RECEIVE:
      handle_received_packet(rail_handle);
      // Request Rx when entering IDLE state
      start_rx = true;
      state = S_IDLE;
#if defined(SL_CATALOG_KERNEL_PRESENT)
      app_task_notify();
#endif
      break;
    case S_ERROR:
      handle_error_state();
      break;
    default:
      // Unexpected state
      app_log_error("Unexpected state occurred:%d\n", state);
      break;
  }

  // Reset copy of RAIL events
  rail_last_state = RAIL_EVENTS_NONE;
#endif
}


int main(void)
{
	uint8_t ret = 0;
	uint32_t incoming_events = 0;
	/* Initialize the event */
	/*
	if (led.port && !gpio_is_ready_dt(&led)) 
	{
		printk("Error %d: LED device %s is not ready; ignoring it\n",ret, led.port->name);
		led.port = NULL;
	}
	if (led.port) {
		ret = gpio_pin_configure_dt(&led, GPIO_OUTPUT);
		}
	val =0x01;
	gpio_pin_set_dt(&led, val);
	*/
	k_event_init(&s_sl_machine.smf_event);
	smf_set_initial(&s_sl_machine.ctx, &radio_states[INIT]);
	printk("Starting\n");
	
	while (1) {
		  // must be called from the super loop.
    sl_system_process_action();

    // Application process.
    //////////app_process_action();
    #ifdef NNNNN
		ret = smf_run_state(&s_sl_machine.ctx);
		if (ret) {
			return -1;
		}
#endif

		incoming_events =
			k_event_wait(&s_sl_machine.smf_event,
				     (EVENT_REQUEST_SEND | EVENT_RADIO_SENT | EVENT_RADIO_RECEIVED |
				      EVENT_CLI_RECEIVE_SETTING | EVENT_RADIO_ERROR),
				     false, K_FOREVER);

		if (incoming_events & EVENT_REQUEST_SEND) {
			smf_set_state(&s_sl_machine.ctx, &radio_states[SEND]);
		}
		if (incoming_events & EVENT_RADIO_SENT) {
			smf_set_state(&s_sl_machine.ctx, &radio_states[SENT]);
		}
		if (incoming_events & EVENT_RADIO_RECEIVED) {
			smf_set_state(&s_sl_machine.ctx, &radio_states[RECEIVE]);
		}
		if (incoming_events & EVENT_RADIO_ERROR) {
			smf_set_state(&s_sl_machine.ctx, &radio_states[ERROR]);
		}

	}
	return 0;
}

// -----------------------------------------------------------------------------
// Static Function Definitions

static void init_run(void *o)
{
	RAIL_Version_t rail_version;
	rail_version.major=2;
	rail_version.minor=0;
	rail_version.rev=0;

	struct s_prop_var *s = o;
	printk("INIT STATE\n");
	if (app_init_gpios(s)) {
		printk("LED and Button init failed!\n");
	}
	printk("GOOOOOOOO\n");
	app_rail_init();
	RAIL_GetVersion(&rail_version, 1);
	printk("RAIL LIB version: %d.%d.%d\n", rail_version.major, rail_version.minor, rail_version.rev);
	printk(" HASH: %u\n", rail_version.hash);
	printk("Press the button\n");
	s->packet_sent = true;
	smf_set_state(&s->ctx, &radio_states[IDLE]);
 
}

static void idle_run(void *o)
{

	struct s_prop_var *s = o;
	//printk("IDLE STATE\n");

	if (k_event_test(&(s->smf_event), EVENT_CLI_RECEIVE_SETTING)) {
		set_continuous_rx(s->allow_rx);
		k_event_clear(&(s->smf_event), EVENT_CLI_RECEIVE_SETTING);
	}
}

static void send_run(void *o)
{
	struct s_prop_var *s = o;
	printk("SEND STATE\n");

	handle_send(&(s->packet_sent));
	smf_set_state(&s->ctx, &radio_states[IDLE]);
	k_event_clear(&(s->smf_event), EVENT_REQUEST_SEND);

}

static void sent_run(void *o)
{
	struct s_prop_var *s = o;
	printk("SENT STATE\n");
	
	handle_sent(&(s->packet_sent));
	app_update_send_led(s);
	smf_set_state(&s->ctx, &radio_states[IDLE]); //ERA IDLE
	k_event_clear(&(s->smf_event), EVENT_RADIO_SENT);
 
}

static void received_run(void *o)
{
	struct s_prop_var *s = o;
	printk("RECEIVE STATE\n");

	handle_receive();
	app_update_receive_led(s);
	smf_set_state(&s->ctx, &radio_states[IDLE]);
	k_event_clear(&(s->smf_event), EVENT_RADIO_RECEIVED);
	
}

static void error_run(void *o)
{
	struct s_prop_var *s = o;
	printk("ERROR STATE\n");
	
	handle_error(&(s->error_code));
	smf_set_state(&s->ctx, &radio_states[IDLE]);
	k_event_clear(&(s->smf_event), EVENT_RADIO_ERROR);
	
}
