epanet_fortran_example.exe: epanet_toolkit.o epanet_toolkit.f90 epanet2.dll
	gfortran -o epanet_fortran_example.exe epanet_toolkit.o epanet_fortran_example.f90 -Wl,epanet2.dll
	
epanet_toolkit.o: epanet_toolkit.f90
	gfortran -c epanet_toolkit.f90
	
epanet2.dll:
		wget http://www.epa.gov/nrmrl/wswrd/dw/epanet/EN2toolkit.zip
		unzip EN2toolkit.zip epanet2.dll

clean:
	-rm *.o
	-rm *.mod
	-rm *.exe