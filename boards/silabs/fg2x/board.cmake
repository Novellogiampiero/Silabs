# Copyright (c) 2021, Sateesh Kotapati
#
# SPDX-License-Identifier: Apache-2.0
#

#board_runner_args(jlink "--device=EFR32MG24BxxxF1536" "--reset-after-load") aggiunto sotto il reset-after-load
board_runner_args(jlink "--device=EFR32FG28BXXXF1024" "--reset-after-load")
#board_runner_args(jlink "--device=EFR32FG23BXXXF512" "--reset-after-load")
include(${ZEPHYR_BASE}/boards/common/jlink.board.cmake)
