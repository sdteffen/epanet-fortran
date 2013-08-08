module epanet_toolkit
    use iso_c_binding
    implicit none

    interface
        integer(c_int) function ENopen(inpfile, reportfile, binaryresultfile) bind (c, name = "ENopen")
            use iso_c_binding
            character(c_char), dimension(*) :: inpfile
            character(c_char), dimension(*) :: reportfile
            character(c_char), dimension(*) :: binaryresultfile
        end function ENopen
	
		integer(c_int) function ENclose() bind (c, name = "ENclose")
			use iso_c_binding
		end function ENclose	
  
		 integer(c_int) function ENgetcount(code, count) bind (c, name="ENgetcount")
			use iso_c_binding
			integer(c_int), value :: code
			integer(c_int) :: count
		end function
	end interface

    ! Node parameters
    integer(c_int), parameter :: EN_ELEVATION = 0
    integer(c_int), parameter :: EN_BASEDEMAND = 1
    integer(c_int), parameter :: EN_PATTERN = 2
    integer(c_int), parameter :: EN_EMITTER = 3
    integer(c_int), parameter :: EN_INITQUAL = 4
    integer(c_int), parameter :: EN_SOURCEQUAL = 5
    integer(c_int), parameter :: EN_SOURCEPAT = 6
    integer(c_int), parameter :: EN_SOURCETYPE = 7
    integer(c_int), parameter :: EN_TANKLEVEL = 8
    integer(c_int), parameter :: EN_DEMAND = 9
    integer(c_int), parameter :: EN_HEAD = 10
    integer(c_int), parameter :: EN_PRESSURE = 11
    integer(c_int), parameter :: EN_QUALITY = 12
    integer(c_int), parameter :: EN_SOURCEMASS = 13
    integer(c_int), parameter :: EN_INITVOLUME = 14
    integer(c_int), parameter :: EN_MIXMODEL = 15
    integer(c_int), parameter :: EN_MIXZONEVOL = 16

    integer(c_int), parameter :: EN_TANKDIAM = 17
    integer(c_int), parameter :: EN_MINVOLUME = 18
    integer(c_int), parameter :: EN_VOLCURVE = 19
    integer(c_int), parameter :: EN_MINLEVEL = 20
    integer(c_int), parameter :: EN_MAXLEVEL = 21
    integer(c_int), parameter :: EN_MIXFRACTION = 22
    integer(c_int), parameter :: EN_TANK_KBULK = 23
    ! Link parameters
    integer(c_int), parameter :: EN_DIAMETER = 0
    integer(c_int), parameter :: EN_LENGTH = 1
    integer(c_int), parameter :: EN_ROUGHNESS = 2
    integer(c_int), parameter :: EN_MINORLOSS = 3
    integer(c_int), parameter :: EN_INITSTATUS = 4
    integer(c_int), parameter :: EN_INITSETTING = 5
    integer(c_int), parameter :: EN_KBULK = 6
    integer(c_int), parameter :: EN_KWALL = 7
    integer(c_int), parameter :: EN_FLOW = 8
    integer(c_int), parameter :: EN_VELOCITY = 9
    integer(c_int), parameter :: EN_HEADLOSS = 10
    integer(c_int), parameter :: EN_STATUS = 11
    integer(c_int), parameter :: EN_SETTING = 12
    integer(c_int), parameter :: EN_ENERGY = 13

    ! Time parameters
    integer(c_int), parameter :: EN_DURATION = 0
    integer(c_int), parameter :: EN_HYDSTEP = 1
    integer(c_int), parameter :: EN_QUALSTEP = 2
    integer(c_int), parameter :: EN_PATTERNSTEP = 3
    integer(c_int), parameter :: EN_PATTERNSTART = 4
    integer(c_int), parameter :: EN_REPORTSTEP = 5
    integer(c_int), parameter :: EN_REPORTSTART = 6
    integer(c_int), parameter :: EN_RULESTEP = 7
    integer(c_int), parameter :: EN_STATISTIC = 8
    integer(c_int), parameter :: EN_PERIODS = 9

    integer(c_int), parameter :: EN_NODECOUNT = 0
    integer(c_int), parameter :: EN_TANKCOUNT = 1
    integer(c_int), parameter :: EN_LINKCOUNT = 2
    integer(c_int), parameter :: EN_PATCOUNT = 3
    integer(c_int), parameter :: EN_CURVECOUNT = 4
    integer(c_int), parameter :: EN_CONTROLCOUNT = 5

    !Node types
    integer(c_int), parameter :: EN_JUNCTION = 0
    integer(c_int), parameter :: EN_RESERVOIR = 1
    integer(c_int), parameter :: EN_TANK = 2

    !Link types
    integer(c_int), parameter :: EN_CVPIPE = 0
    integer(c_int), parameter :: EN_PIPE = 1
    integer(c_int), parameter :: EN_PUMP = 2
    integer(c_int), parameter :: EN_PRV = 3
    integer(c_int), parameter :: EN_PSV = 4
    integer(c_int), parameter :: EN_PBV = 5
    integer(c_int), parameter :: EN_FCV = 6
    integer(c_int), parameter :: EN_TCV = 7
    integer(c_int), parameter :: EN_GPV = 8

    ! Quality analysis types
    integer(c_int), parameter :: EN_NONE = 0
    integer(c_int), parameter :: EN_CHEM = 1
    integer(c_int), parameter :: EN_AGE = 2
    integer(c_int), parameter :: EN_TRACE = 3

    ! Source quality types
    integer(c_int), parameter :: EN_CONCEN = 0
    integer(c_int), parameter :: EN_MASS = 1
    integer(c_int), parameter :: EN_SETPOINT = 2
    integer(c_int), parameter :: EN_FLOWPACED = 3

    ! Flow unit types
    integer(c_int), parameter :: EN_CFS = 0
    integer(c_int), parameter :: EN_GPM = 1
    integer(c_int), parameter :: EN_MGD = 2
    integer(c_int), parameter :: EN_IMGD = 3
    integer(c_int), parameter :: EN_AFD = 4
    integer(c_int), parameter :: EN_LPS = 5
    integer(c_int), parameter :: EN_LPM = 6
    integer(c_int), parameter :: EN_MLD = 7
    integer(c_int), parameter :: EN_CMH = 8
    integer(c_int), parameter :: EN_CMD = 9

    ! Misc, options
    integer(c_int), parameter :: EN_TRIALS = 0
    integer(c_int), parameter :: EN_ACCURACY = 1
    integer(c_int), parameter :: EN_TOLERANCE = 2
    integer(c_int), parameter :: EN_EMITEXPON = 3
    integer(c_int), parameter :: EN_DEMANDMULT = 4

    ! Control types
    integer(c_int), parameter :: EN_LOWLEVEL = 0
    integer(c_int), parameter :: EN_HILEVEL = 1
    integer(c_int), parameter :: EN_TIMER = 2
    integer(c_int), parameter :: EN_TIMEOFDAY = 3

    !Time statistics types
    integer(c_int), parameter :: EN_AVERAGE = 1
    integer(c_int), parameter :: EN_MINIMUM = 2
    integer(c_int), parameter :: EN_MAXIMUM = 3
    integer(c_int), parameter :: EN_RANGE = 4

    ! Tank mixing models
    integer(c_int), parameter :: EN_MIX1 = 0
    integer(c_int), parameter :: EN_MIX2 = 1
    integer(c_int), parameter :: EN_FIFO = 2
    integer(c_int), parameter :: EN_LIFO = 3

    integer(c_int), parameter :: EN_NOSAVE = 0 ! Save-results-to-file flag
    integer(c_int), parameter :: EN_SAVE = 1

    integer(c_int), parameter :: EN_INITFLOW = 10 ! Re-initialize flows flag 

    integer(c_int), parameter :: EN_CONST_HP = 0 ! constant horsepower          
    integer(c_int), parameter :: EN_POWER_FUNC = 1 !power function
    integer(c_int), parameter :: EN_CUSTOM = 2 ! user-defined custom curve

end module epanet_toolkit