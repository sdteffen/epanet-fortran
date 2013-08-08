program epanet_toolkit_example
    use epanet_toolkit
    implicit none

    integer (c_int) :: num_nodes = 0
	integer (c_int) :: num_links = 0
	integer (c_int) :: rv 

    rv = ENopen("Net1.inp" // c_null_char, "Net1.txt" // c_null_char, "Net1.bin" // c_null_char )
	print *, "ENopen() returned:", rv
    rv = ENgetcount(EN_NODECOUNT, num_nodes)
	print *, "ENgecount() returned:", rv
	print *, "EN_NODECOUNT:", num_nodes
	rv = ENgetcount(EN_LINKCOUNT, num_links)
	print *, "ENgetcount() returned:", rv
	print *, "EN_LINKCOUNT:", num_links
	
    ! ENsolveH()
    ! ENopenQ()
    ! ENinitQ(0)

    !Do  
    !   ENrunQ(t)
    !  For i = 0 To num_nodes - 1 Step 1
    !     ENgetnodevalue(i, EN_QUALITY, value)
    !    id = "".PadRight(255, Chr(0))
    !   ENgetnodeid(i, id)
    !  id = id.Trim(Chr(0))
    !  Console.WriteLine("Node " + id + " Quality " + Str(value))
    ! ENgetnodevalue(i, EN_PRESSURE, value)
    ! Console.WriteLine("Node " + id + " Pressure " + Str(value))
    !  Next
    ! For i = 0 To num_links - 1 Step 1
    !     ENgetlinkvalue(i, EN_FLOW, value)
    !    id = "".PadRight(255, Chr(0))
    !    ENgetlinkid(i, id)
    !    id = id.Trim(Chr(0))
    !    Console.WriteLine("Link " + id + " Flow " + Str(value))
    !   Next
    !  ENstepQ(tleft)
    !  Loop Until (tleft = 0)
    !  ENcloseQ()
    !  ENsolveQ()
    !  ENreport()
    !  ENclose()

end program epanet_toolkit_example