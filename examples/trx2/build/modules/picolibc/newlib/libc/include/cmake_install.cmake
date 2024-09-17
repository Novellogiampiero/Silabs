# Install script for directory: /home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include

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

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/novello/zephyr3.7B/R5x_No/autec-dir/samples/trx2/build/modules/picolibc/newlib/libc/include/sys/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/novello/zephyr3.7B/R5x_No/autec-dir/samples/trx2/build/modules/picolibc/newlib/libc/include/machine/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/novello/zephyr3.7B/R5x_No/autec-dir/samples/trx2/build/modules/picolibc/newlib/libc/include/ssp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/novello/zephyr3.7B/R5x_No/autec-dir/samples/trx2/build/modules/picolibc/newlib/libc/include/rpc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/novello/zephyr3.7B/R5x_No/autec-dir/samples/trx2/build/modules/picolibc/newlib/libc/include/arpa/cmake_install.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/alloca.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/_ansi.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/argz.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/ar.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/assert.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/byteswap.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/cpio.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/ctype.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/devctl.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/dirent.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/elf.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/endian.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/envlock.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/envz.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/errno.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/fastmath.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/fcntl.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/fenv.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/fnmatch.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/getopt.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/glob.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/grp.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/iconv.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/ieeefp.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/inttypes.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/langinfo.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/libgen.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/limits.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/locale.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/malloc.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/math.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/memory.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/newlib.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/paths.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/picotls.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/pwd.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/regdef.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/regex.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/sched.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/search.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/setjmp.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/signal.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/spawn.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/stdint.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/stdlib.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/string.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/strings.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/_syslist.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/tar.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/termios.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/threads.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/time.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/unctrl.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/unistd.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/utime.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/utmp.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/wchar.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/wctype.h"
    "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/wordexp.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES "/home/novello/zephyr3.7B/R5x_No/modules/lib/picolibc/newlib/libc/include/complex.h")
endif()

