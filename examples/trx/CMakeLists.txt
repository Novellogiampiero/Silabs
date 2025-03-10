# SPDX-License-Identifier: Apache-2.0

cmake_minimum_required(VERSION 3.20.0)

find_package(Zephyr REQUIRED HINTS $ENV{ZEPHYR_BASE})
project(trx)

target_include_directories(app PRIVATE
    src/
    src/autogen/
    src/config/
    src/config/rail
    src/config/rail/${CONFIG_BOARD}
    src/autogen/config/rail/${CONFIG_BOARD}
    src/autogen/rail/${CONFIG_BOARD}
)

target_sources(app PRIVATE src/main.c)
target_sources(app PRIVATE src/app_gpio.c)
target_sources(app PRIVATE src/app_cli.c)
target_sources(app PRIVATE src/app_rail.c)
target_sources(app PRIVATE src/autogen/sl_rail_util_callbacks.c)
target_sources(app PRIVATE src/autogen/sl_rail_util_init.c)
target_sources(app PRIVATE src/autogen/rail/${CONFIG_BOARD}/rail_config.c)
