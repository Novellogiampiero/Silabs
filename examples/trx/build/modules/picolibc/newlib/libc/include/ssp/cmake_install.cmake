# Install script for directory: /home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/ssp

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ssp" TYPE FILE FILES
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/ssp/ssp.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/ssp/stdio.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/ssp/stdlib.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/ssp/string.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/ssp/strings.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/ssp/unistd.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/ssp/wchar.h"
    )
endif()

