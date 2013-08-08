%.o : %.c
	gcc -c -o $@ $<

c_objs = epanet.o input1.o input2.o input3.o rules.o output.o report.o \
	inpfile.o hydraul.o smatrix.o quality.o mempool.o hash.o	
	
epanet_fortran_example : epanet_fortran_example.f03 $(c_objs) epanet_toolkit.o
	gfortran -o epanet_fortran_example epanet_fortran_example.f03 $(c_objs) -lm
	
epanet_toolkit.o: epanet_toolkit.f03
	gfortran -c epanet_toolkit.f03
	
clean:
	-rm *.o
	-rm *.mod
	-rm *.exe
	
c2f:
	grep -h DLLEXPORT *.c > c.txt
	sed -f c2f.sed c.txt > d.txt
	sed '/^ :[ :]*$$/d' d.txt > c.f03
		

