# Install script for directory: /home/soumith/code/cutorch/lib/THC

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/soumith/torch/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libTHC.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libTHC.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libTHC.so"
         RPATH "$ORIGIN/../lib:/home/soumith/torch/install/lib:/usr/local/cuda/lib64")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/soumith/code/cutorch/build/lib/THC/libTHC.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libTHC.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libTHC.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libTHC.so"
         OLD_RPATH "/home/soumith/torch/install/lib:/usr/local/cuda/lib64:::::::::::::::"
         NEW_RPATH "$ORIGIN/../lib:/home/soumith/torch/install/lib:/usr/local/cuda/lib64")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libTHC.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/THC" TYPE FILE FILES
    "/home/soumith/code/cutorch/lib/THC/THC.h"
    "/home/soumith/code/cutorch/lib/THC/THCGeneral.h"
    "/home/soumith/code/cutorch/lib/THC/THCBlas.h"
    "/home/soumith/code/cutorch/lib/THC/THCStorage.h"
    "/home/soumith/code/cutorch/lib/THC/THCStorageCopy.h"
    "/home/soumith/code/cutorch/lib/THC/THCTensor.h"
    "/home/soumith/code/cutorch/lib/THC/THCTensorCopy.h"
    "/home/soumith/code/cutorch/lib/THC/THCTensorRandom.h"
    "/home/soumith/code/cutorch/lib/THC/THCTensorMath.h"
    "/home/soumith/code/cutorch/lib/THC/THCTensorConv.h"
    "/home/soumith/code/cutorch/lib/THC/THCTensorSort.h"
    "/home/soumith/code/cutorch/lib/THC/THCApply.cuh"
    "/home/soumith/code/cutorch/lib/THC/THCReduce.cuh"
    "/home/soumith/code/cutorch/lib/THC/THCReduceApplyUtils.cuh"
    )
endif()

