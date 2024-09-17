# Install script for directory: /home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/sys

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/home/novello/SimplicityStudio_v5/developer/toolchains/gnu_arm/12.2.rel1_2023.7/bin/arm-none-eabi-objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/sys" TYPE FILE FILES
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/sys/auxv.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/sys/cdefs.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/sys/config.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/sys/custom_file.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/sys/_default_fcntl.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/sys/dirent.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/sys/dir.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/sys/errno.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/sys/fcntl.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/sys/features.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/sys/file.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/sys/iconvnls.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/sys/_intsup.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/sys/_locale.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/sys/lock.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/sys/param.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/sys/queue.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/sys/resource.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/sys/sched.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/sys/select.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/sys/signal.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/sys/_sigset.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/sys/stat.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/sys/_stdint.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/sys/string.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/sys/syslimits.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/sys/timeb.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/sys/time.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/sys/times.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/sys/_timespec.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/sys/timespec.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/sys/_timeval.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/sys/tree.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/sys/_types.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/sys/types.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/sys/_tz_structs.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/sys/unistd.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/sys/utime.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/sys/wait.h"
    )
endif()

