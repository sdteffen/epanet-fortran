program epanet_toolkit_example
    use epanet_toolkit
    implicit none

    integer(c_int) :: num_nodes = 0
	integer(c_int) :: num_links = 0
	integer(c_int) :: i, rv, t, tleft
	real(c_float) :: value
	character(c_char), dimension(10) :: id = ""

    rv = ENopen("Net1.inp" // c_null_char, "Net1.txt" // c_null_char, "Net1.bin" // c_null_char )
	print *, "ENopen() returned:", rv
    rv = ENgetcount(EN_NODECOUNT, num_nodes)
	print *, "ENgecount() returned:", rv
	print *, "EN_NODECOUNT:", num_nodes
	rv = ENgetcount(EN_LINKCOUNT, num_links)
	print *, "ENgetcount() returned:", rv
	print *, "EN_LINKCOUNT:", num_links
	print *, "ENsolveH() returned:", ENsolveH()
	print *, "ENopenQ() returned:", ENopenQ()
	print *, "ENinitQ() returned:", ENinitQ(0);
   
   do  
      print *, "ENrunQ() returned:", ENrunQ(t)
      do i = 0, num_nodes - 1
        rv = ENgetnodevalue(i, EN_QUALITY, value)
		rv = ENgetnodeid(i, id)
		print *, "Node ", id, "Quality", value
		rv = ENgetnodevalue(i, EN_PRESSURE, value)
		print *, "Node ", id, "Pressure", value
      end do
      do i = 0, num_links - 1
        rv = ENgetlinkvalue(i, EN_FLOW, value)
        rv = ENgetlinkid(i, id)
       print *, "Link ", id, "Flow", value
      end do
	   
      print *, "ENstepQ() returned: ", ENstepQ(tleft)
      if (tleft == 0) exit
	end do
    print *, "ENcloseQ() returned: ", ENcloseQ()
    print *, "ENsolveQ() returned: ", ENsolveQ()
    print *, "ENreport() returned: ", ENreport()
    print *, "ENclose() returned: ", ENclose()

end program epanet_toolkit_example