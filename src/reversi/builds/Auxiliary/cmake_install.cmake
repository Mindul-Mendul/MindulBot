# Install script for directory: C:/Users/leesj/Desktop/DiscordBot/src/reversi/opencv_sources/cmake-3.21.0-rc1/cmake-3.21.0-rc1/Auxiliary

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Users/leesj/Desktop/DiscordBot/src/reversi/builds")
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
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "C:/MinGW/bin/objdump.exe")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/vim/vimfiles" TYPE DIRECTORY FILES
    "C:/Users/leesj/Desktop/DiscordBot/src/reversi/opencv_sources/cmake-3.21.0-rc1/cmake-3.21.0-rc1/Auxiliary/vim/indent"
    "C:/Users/leesj/Desktop/DiscordBot/src/reversi/opencv_sources/cmake-3.21.0-rc1/cmake-3.21.0-rc1/Auxiliary/vim/syntax"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/emacs/site-lisp" TYPE FILE FILES "C:/Users/leesj/Desktop/DiscordBot/src/reversi/opencv_sources/cmake-3.21.0-rc1/cmake-3.21.0-rc1/Auxiliary/cmake-mode.el")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/aclocal" TYPE FILE FILES "C:/Users/leesj/Desktop/DiscordBot/src/reversi/opencv_sources/cmake-3.21.0-rc1/cmake-3.21.0-rc1/Auxiliary/cmake.m4")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/leesj/Desktop/DiscordBot/src/reversi/builds/Auxiliary/bash-completion/cmake_install.cmake")
endif()

