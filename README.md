epanet-fortran
==============

Example code to use the EPANET toolkit from FORTRAN.

See [epanet.de/developer/fortran.html](http://epanet.de/developer/fortran.html) for details.

The example was developed and tested using gfortran and MinGW on Windows and might need adjustments for other compilers/operating systems.

To install gfortran on Windows, run

mingw-get install gfortran

The C sources are the original EPANET sources, with SOL defined instead or CLE or DLL.

To build the example:

make epanet_fortran_example