# Makefile for checkair program
# $Id: $
#

DEBUG    = -g

NCPATH   = /usr/local/shared/netcdf/intel/fortran/4.2

INCDIR   = -I$(NCPATH)/include -module $(NCPATH)/include
LIBDIR   = -L$(NCPATH)/lib
LIBS     = -lnetcdf

TARGET   = test
SRCS     = test.f90

FC       = ifort
FFLAGS   = -I$(INCDIR) -L$(LIBDIR)

#CC       = icc/gcc
#CXX      = g++
#CFLAGS   = -I/usr/include (C compiler flags)
#CXXFLAGS = C++ compiler flags
#CPPFLAGS = Preprocessor flags (-D -U), used by CC and CXX
# use:  $(CC) $(CPPFLAGS) $(CFLAGS) 


all: $(TARGET)

$(TARGET): $(SRCS)
	$(FC) $(FCFLAGS) $(INCLUDES) $(LFLAGS) -o $(TARGET) $(SRCS) $(LIBS)

debug: $(SRCS)
	$(FC) $(DEBUG) $(FCFLAGS) $(INCLUDES) $(LFLAGS) -o $(TARGET) $(SRCS) $(LIBS)

clean:
	/bin/rm -f $(TARGET)
