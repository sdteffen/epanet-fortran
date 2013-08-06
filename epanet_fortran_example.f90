program epanet_toolkit_example
	use epanet_toolkit
	implicit none
	
 !   Sub Main()
  !      Dim num_nodes As Integer
   !     Dim num_links As Integer
    !    Dim t As Integer
     !   Dim tleft As Integer
      !  Dim value As Single 
       ! Dim id As String

    write(*,*) ENopen("Net1.inp", "Net1.txt", "Net1.bin")
    !write(*,*) ENgetcount(EN_NODECOUNT, num_nodes)
       ! Call ENgetcount(EN_LINKCOUNT, num_links)
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
   ! End Sub

end program epanet_toolkit_example