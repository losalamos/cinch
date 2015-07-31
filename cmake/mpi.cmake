#------------------------------------------------------------------------------#
# Copyright (c) 2014 Los Alamos National Security, LLC
# All rights reserved.
#------------------------------------------------------------------------------#

include(FindMPI)

#------------------------------------------------------------------------------#
# Add option to enable MPI
#------------------------------------------------------------------------------#

option(ENABLE_MPI "Enable MPI" OFF)
option(ENABLE_MPI_CXX_BINDINGS "Enable MPI C++ Bindings" OFF)

if(ENABLE_MPI)

#------------------------------------------------------------------------------#
# Find MPI
#------------------------------------------------------------------------------#

find_package(MPI REQUIRED)

#------------------------------------------------------------------------------#
# Skip C++ linkage of MPI
#------------------------------------------------------------------------------#

if(ENABLE_MPI_CXX_BINDINGS)
    set(MPI_LANGUAGE CXX)
else()
    set(MPI_LANGUAGE C)
    add_definitions(-DOMPI_SKIP_MPICXX)
    add_definitions(-DMPICH_SKIP_MPICXX)
endif(ENABLE_MPI_CXX_BINDINGS)

endif(ENABLE_MPI)

#------------------------------------------------------------------------------#
# Formatting options for emacs and vim.
# vim: set tabstop=4 shiftwidth=4 expandtab :
#------------------------------------------------------------------------------#
