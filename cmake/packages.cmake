#------------------------------------------------------------------------------#
# Copyright (c) 2014 Los Alamos National Security, LLC
# All rights reserved.
#------------------------------------------------------------------------------#

macro(cinch_load_extras)

  set(options MPI LEGION)
  set(oneValueArgs)
  set(multiValueArgs)
  cmake_parse_arguments(opt_in "${options}" "${oneValueArgs}"
    "${multiValueArgs}" ${ARGN} )

  include(boost)
  include(coverage)
  include(style)
  include(doxygen)

  if(opt_in_LEGION)
    include(legion)
  endif()

  if(opt_in_MPI)
    include(mpi)
  endif()

  include(openmp)

  # load clog after mpi
  include(logging)

  # load unit after legion and mpi
  include(unit)

  include(devel)
  include(logging)

endmacro()

#------------------------------------------------------------------------------#
# Formatting options for emacs and vim.
# vim: set tabstop=2 shiftwidth=2 expandtab :
#------------------------------------------------------------------------------#
