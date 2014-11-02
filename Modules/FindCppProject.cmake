# Copyright (c) 2014, K. Kumar (me@kartikkumar.com)
# Distributed under the MIT License.
# See accompanying file LICENSE.md or copy at http://opensource.org/licenses/MIT

if(CPP_PROJECT_INCLUDE_DIRS)
  # in cache already
  set(CPP_PROJECT_FOUND TRUE)
else(CPP_PROJECT_INCLUDE_DIRS)

  find_path(CPP_PROJECT_INCLUDE_DIR
    NAMES
      cppProject.hpp
    PATHS
      /usr/include
      /usr/local/include
      /opt/local/include
      /sw/include
      /usr/local
      ${PROJECT_PATH}
      ${EXTERNAL_PATH}
    PATH_SUFFIXES
      CppProject include/CppProject cpp-project/include/CppProject CppProject/src/cpp-project/include/CppProject
  )

  if(CPP_PROJECT_INCLUDE_DIR)
    set(CPP_PROJECT_INCLUDE_DIRS
        ${CPP_PROJECT_INCLUDE_DIR}/..
    )
  endif(CPP_PROJECT_INCLUDE_DIR)

  include(FindPackageHandleStandardArgs)
  find_package_handle_standard_args(CppProject DEFAULT_MSG CPP_PROJECT_INCLUDE_DIRS)

  # show the CPP_PROJECT_INCLUDE_DIRS variables only in the advanced view
  mark_as_advanced(CPP_PROJECT_INCLUDE_DIRS)

endif(CPP_PROJECT_INCLUDE_DIRS)