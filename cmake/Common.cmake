#
# Common CMake module for WWIV
#

message(STATUS "Loaded WWIV Common CMake Module.")

list(APPEND CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake/Modules)
list(APPEND CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake/Modules/sanitizers)
set(CMAKE_VERBOSE_MAKEFILE ON)
set(CMAKE_COLOR_MAKEFILE   ON)

set (CMAKE_CXX_STANDARD 17)
set (CMAKE_CXX_STANDARD_REQUIRED ON)

option(WWIV_BUILD_TESTS "Build WWIV test programs" ON)

if (UNIX)
  if (CMAKE_SYSTEM_NAME MATCHES "Linux")
    set(LINUX TRUE)
  endif()

  if (CMAKE_COMPILER_IS_GNUCXX)
    list(APPEND CMAKE_CXX_FLAGS "-frtti")
  endif()

elseif (WIN32)

  if (MSVC)
    message(STATUS "Using MSVC, Setting warnings to match UNIX.")
    add_definitions(/D_CRT_SECURE_NO_WARNINGS)
    add_definitions(/D_CRT_NONSTDC_NO_DEPRECATE)
    add_definitions(/D_WINSOCK_DEPRECATED_NO_WARNINGS)
    add_definitions(/DNOMINMAX)
    add_definitions(/DWIN32_LEAN_AND_MEAN=1)

    # To silence cereal warnings that they know about already
    # bug: https://github.com/USCiLab/cereal/issues/456
    add_definitions(/D_SILENCE_CXX17_ITERATOR_BASE_CLASS_DEPRECATION_WARNING)
  endif(MSVC)
endif (UNIX)

if( NOT CMAKE_BUILD_TYPE )
  set( CMAKE_BUILD_TYPE "Debug" )
  message(STATUS "Defaulting CMAKE_BUILD_TYPE to Debug")
endif()
message(STATUS "CMAKE_BUILD_TYPE: ${CMAKE_BUILD_TYPE}")


IF(${CMAKE_BUILD_TYPE} STREQUAL Debug)
  message(STATUS "Defining _DEBUG macro")
  ADD_DEFINITIONS(-D_DEBUG)
ENDIF(${CMAKE_BUILD_TYPE} STREQUAL Debug)

function(SET_MSVC_WARNING_LEVEL_4)
  if(WIN32 AND MSVC)
    #message(STATUS "Setting Warning Level 4")
    if(CMAKE_CXX_FLAGS MATCHES "/W[0-4]")
      string(REGEX REPLACE "/W[0-4]" "/W4" CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}")
    else()
      set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /W4")
    endif()
  endif()
endfunction()

function(SET_MAX_WARNINGS)
  if(UNIX) 
    add_definitions ("-Wall")
  endif()
  if(WIN32)
    SET_MSVC_WARNING_LEVEL_4()
  endif()

endfunction()


MACRO(MACRO_ENSURE_OUT_OF_SOURCE_BUILD)
  STRING(COMPARE EQUAL "${${PROJECT_NAME}_SOURCE_DIR}"
    "${${PROJECT_NAME}_BINARY_DIR}" insource)
  GET_FILENAME_COMPONENT(PARENTDIR ${${PROJECT_NAME}_SOURCE_DIR} PATH)
  STRING(COMPARE EQUAL "${${PROJECT_NAME}_SOURCE_DIR}"
    "${PARENTDIR}" insourcesubdir)
  IF(insource OR insourcesubdir)
    MESSAGE(FATAL_ERROR "${PROJECT_NAME} requires an out of source build.")
  ENDIF(insource OR insourcesubdir)
ENDMACRO(MACRO_ENSURE_OUT_OF_SOURCE_BUILD)

  
message(STATUS "CMAKE_CXX_FLAGS: ${CMAKE_CXX_FLAGS}")
