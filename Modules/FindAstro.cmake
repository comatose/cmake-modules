# Copyright (c) 2014, K. Kumar (me@kartikkumar.com)
# Distributed under the MIT License.
# See accompanying file LICENSE.md or copy at http://opensource.org/licenses/MIT

if(ASTRO_INCLUDE_DIRS)
  # in cache already
  set(ASTRO_FOUND TRUE)
else(ASTRO_INCLUDE_DIRS)

  find_path(ASTRO_INCLUDE_DIR
    NAMES
      astro.hpp
    PATHS
      /usr/include
      /usr/local/include
      /opt/local/include
      /sw/include
      /usr/local
      ${MYPROJ_PATH}
      ${MYEXT_PATH}
    PATH_SUFFIXES
      Astro astro/include/Astro Astro/src/astro/include/Astro
  )

  if(ASTRO_INCLUDE_DIR)
    set(ASTRO_INCLUDE_DIRS
        ${ASTRO_INCLUDE_DIR}/..
    )
  endif(ASTRO_INCLUDE_DIR)

  include(FindPackageHandleStandardArgs)
  find_package_handle_standard_args(Astro DEFAULT_MSG ASTRO_INCLUDE_DIRS)

  # show the ASTRO_INCLUDE_DIRS variables only in the advanced view
  mark_as_advanced(ASTRO_INCLUDE_DIRS)

endif(ASTRO_INCLUDE_DIRS)