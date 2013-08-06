module epanet_toolkit
    use, intrinsic :: iso_c_binding
    implicit none

    interface epanet_toolkit_interface

        function ENopen(inpfile, reportfile, binaryresultfile) bind (c, name = "ENopen")
            use, intrinsic :: iso_c_binding
            character( kind = c_char), dimension(*) :: inpfile
            character( kind = c_char), dimension(*) :: reportfile
            character( kind = c_char), dimension(*) :: binaryresultfile
            integer( kind = c_int) :: ENopen
        end function ENopen

    end interface epanet_toolkit_interface

    ! Node parameters
    integer, parameter :: EN_ELEVATION = 0
    integer, parameter :: EN_BASEDEMAND = 1
    integer, parameter :: EN_PATTERN = 2
    integer, parameter :: EN_EMITTER = 3
    integer, parameter :: EN_INITQUAL = 4
    integer, parameter :: EN_SOURCEQUAL = 5
    integer, parameter :: EN_SOURCEPAT = 6
    integer, parameter :: EN_SOURCETYPE = 7
    integer, parameter :: EN_TANKLEVEL = 8
    integer, parameter :: EN_DEMAND = 9
    integer, parameter :: EN_HEAD = 10
    integer, parameter :: EN_PRESSURE = 11
    integer, parameter :: EN_QUALITY = 12
    integer, parameter :: EN_SOURCEMASS = 13
    integer, parameter :: EN_INITVOLUME = 14
    integer, parameter :: EN_MIXMODEL = 15
    integer, parameter :: EN_MIXZONEVOL = 16

    integer, parameter :: EN_TANKDIAM = 17
    integer, parameter :: EN_MINVOLUME = 18
    integer, parameter :: EN_VOLCURVE = 19
    integer, parameter :: EN_MINLEVEL = 20
    integer, parameter :: EN_MAXLEVEL = 21
    integer, parameter :: EN_MIXFRACTION = 22
    integer, parameter :: EN_TANK_KBULK = 23
    ! Link parameters
    integer, parameter :: EN_DIAMETER = 0
    integer, parameter :: EN_LENGTH = 1
    integer, parameter :: EN_ROUGHNESS = 2
    integer, parameter :: EN_MINORLOSS = 3
    integer, parameter :: EN_INITSTATUS = 4
    integer, parameter :: EN_INITSETTING = 5
    integer, parameter :: EN_KBULK = 6
    integer, parameter :: EN_KWALL = 7
    integer, parameter :: EN_FLOW = 8
    integer, parameter :: EN_VELOCITY = 9
    integer, parameter :: EN_HEADLOSS = 10
    integer, parameter :: EN_STATUS = 11
    integer, parameter :: EN_SETTING = 12
    integer, parameter :: EN_ENERGY = 13

    ! Time parameters
    integer, parameter :: EN_DURATION = 0
    integer, parameter :: EN_HYDSTEP = 1
    integer, parameter :: EN_QUALSTEP = 2
    integer, parameter :: EN_PATTERNSTEP = 3
    integer, parameter :: EN_PATTERNSTART = 4
    integer, parameter :: EN_REPORTSTEP = 5
    integer, parameter :: EN_REPORTSTART = 6
    integer, parameter :: EN_RULESTEP = 7
    integer, parameter :: EN_STATISTIC = 8
    integer, parameter :: EN_PERIODS = 9

    integer, parameter :: EN_NODECOUNT = 0
    integer, parameter :: EN_TANKCOUNT = 1
    integer, parameter :: EN_LINKCOUNT = 2
    integer, parameter :: EN_PATCOUNT = 3
    integer, parameter :: EN_CURVECOUNT = 4
    integer, parameter :: EN_CONTROLCOUNT = 5

    !Node types
    integer, parameter :: EN_JUNCTION = 0
    integer, parameter :: EN_RESERVOIR = 1
    integer, parameter :: EN_TANK = 2

    !Link types
    integer, parameter :: EN_CVPIPE = 0
    integer, parameter :: EN_PIPE = 1
    integer, parameter :: EN_PUMP = 2
    integer, parameter :: EN_PRV = 3
    integer, parameter :: EN_PSV = 4
    integer, parameter :: EN_PBV = 5
    integer, parameter :: EN_FCV = 6
    integer, parameter :: EN_TCV = 7
    integer, parameter :: EN_GPV = 8

    ! Quality analysis types
    integer, parameter :: EN_NONE = 0
    integer, parameter :: EN_CHEM = 1
    integer, parameter :: EN_AGE = 2
    integer, parameter :: EN_TRACE = 3

    ! Source quality types
    integer, parameter :: EN_CONCEN = 0
    integer, parameter :: EN_MASS = 1
    integer, parameter :: EN_SETPOINT = 2
    integer, parameter :: EN_FLOWPACED = 3

    ! Flow unit types
    integer, parameter :: EN_CFS = 0
    integer, parameter :: EN_GPM = 1
    integer, parameter :: EN_MGD = 2
    integer, parameter :: EN_IMGD = 3
    integer, parameter :: EN_AFD = 4
    integer, parameter :: EN_LPS = 5
    integer, parameter :: EN_LPM = 6
    integer, parameter :: EN_MLD = 7
    integer, parameter :: EN_CMH = 8
    integer, parameter :: EN_CMD = 9

    ! Misc, options
    integer, parameter :: EN_TRIALS = 0
    integer, parameter :: EN_ACCURACY = 1
    integer, parameter :: EN_TOLERANCE = 2
    integer, parameter :: EN_EMITEXPON = 3
    integer, parameter :: EN_DEMANDMULT = 4

    ! Control types
    integer, parameter :: EN_LOWLEVEL = 0
    integer, parameter :: EN_HILEVEL = 1
    integer, parameter :: EN_TIMER = 2
    integer, parameter :: EN_TIMEOFDAY = 3

    !Time statistics types
    integer, parameter :: EN_AVERAGE = 1
    integer, parameter :: EN_MINIMUM = 2
    integer, parameter :: EN_MAXIMUM = 3
    integer, parameter :: EN_RANGE = 4

    ! Tank mixing models
    integer, parameter :: EN_MIX1 = 0
    integer, parameter :: EN_MIX2 = 1
    integer, parameter :: EN_FIFO = 2
    integer, parameter :: EN_LIFO = 3

    integer, parameter :: EN_NOSAVE = 0 ! Save-results-to-file flag
    integer, parameter :: EN_SAVE = 1

    integer, parameter :: EN_INITFLOW = 10 ! Re-initialize flows flag 

    integer, parameter :: EN_CONST_HP = 0 ! constant horsepower          
    integer, parameter :: EN_POWER_FUNC = 1 !power function
    integer, parameter :: EN_CUSTOM = 2 ! user-defined custom curve

end module epanet_toolkit