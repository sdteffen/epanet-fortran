epanet-fortran
==============

Example code to use the EPANET toolkit from FORTRAN.

See [epanet.de/developer/fortran.html](http://epanet.de/developer/fortran.html) for details.

The example was developed and tested using gfortran and MinGW on Windows and might need adjustments for other compilers/operating systems.

To install gfortran on Windows, run

mingw-get install gfortran

The provided example epanet_fortran_example.exe needs the epanet2.dll from the EPANET toolkit to link.
Either place it manually next to the source code or run the following to to download and extract it automatically:

make epanet2.dll

To build the example:

make epanet_fortran_example.exe