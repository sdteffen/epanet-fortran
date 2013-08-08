!
! epanet_toolkit.f03: EPANET Toolkit module in FORTRAN 2003
!
! Author:
!   Steffen Macke (sdteffen@sdteffen.de)
!
! Copyright (C) 2013 Steffen Macke (http://epanet.de)
!
! This program is free software: you can redistribute it and/or modify
! it under the terms of the GNU General Public License as published by
! the Free Software Foundation, either version 2 of the License, or
! (at your option) any later version.
!
! This program is distributed in the hope that it will be useful,
! but WITHOUT ANY WARRANTY; without even the implied warranty of
! MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
! GNU General Public License for more details.
!
! You should have received a copy of the GNU General Public License
! along with this program.  If not, see <http:!www.gnu.org/licenses/>.
!
module epanet_toolkit
    use iso_c_binding
    implicit none

    interface

        integer(c_int) function ENopen(f1, f2, f3) bind(c, name = "ENopen")
            use iso_c_binding
            character(c_char), dimension(*) :: f1
            character(c_char), dimension(*) :: f2
            character(c_char), dimension(*) :: f3
        end function

        integer(c_int) function ENsaveinpfile(filename) bind(c, name = "ENsaveinpfile")
            use iso_c_binding
            character(c_char), dimension(*) :: filename
        end function

        integer(c_int) function ENclose() bind(c, name = "ENclose")
            use iso_c_binding
        end function

        integer(c_int) function ENsolveH() bind(c, name = "ENsolveH")
            use iso_c_binding
        end function

        integer(c_int) function ENsaveH() bind(c, name = "ENsaveH")
            use iso_c_binding
        end function

        integer(c_int) function ENopenH() bind(c, name = "ENopenH")
            use iso_c_binding
        end function

        integer(c_int) function ENinitH(flag) bind(c, name = "ENinitH")
            use iso_c_binding
            integer(c_int), value :: flag
        end function

        integer(c_int) function ENrunH(t) bind(c, name = "ENrunH")
            use iso_c_binding
            integer(c_long) :: t
        end function

        integer(c_int) function ENnextH(tstep) bind(c, name = "ENnextH")
            use iso_c_binding
            integer(c_long) :: tstep
        end function

        integer(c_int) function ENcloseH() bind(c, name = "ENcloseH")
            use iso_c_binding
        end function

        integer(c_int) function ENsavehydfile(filename) bind(c, name = "ENsavehydfile")
            use iso_c_binding
            character(c_char), dimension(*) :: filename
        end function

        integer(c_int) function ENusehydfile(filename) bind(c, name = "ENusehydfile")
            use iso_c_binding
            character(c_char), dimension(*) :: filename
        end function

        integer(c_int) function ENsolveQ() bind(c, name = "ENsolveQ")
            use iso_c_binding
        end function

        integer(c_int) function ENopenQ() bind(c, name = "ENopenQ")
            use iso_c_binding
        end function

        integer(c_int) function ENinitQ(saveflag) bind(c, name = "ENinitQ")
            use iso_c_binding
            integer(c_int), value :: saveflag
        end function

        integer(c_int) function ENrunQ(t) bind(c, name = "ENrunQ")
            use iso_c_binding
            integer(c_long) :: t
        end function

        integer(c_int) function ENnextQ(tstep) bind(c, name = "ENnextQ")
            use iso_c_binding
            integer(c_long) :: tstep
        end function

        integer(c_int) function ENstepQ(tleft) bind(c, name = "ENstepQ")
            use iso_c_binding
            integer(c_long) :: tleft
        end function

        integer(c_int) function ENcloseQ() bind(c, name = "ENcloseQ")
            use iso_c_binding
        end function

        integer(c_int) function ENwriteline(line) bind(c, name = "ENwriteline")
            use iso_c_binding
            character(c_char), dimension(*) :: line
        end function

        integer(c_int) function ENreport() bind(c, name = "ENreport")
            use iso_c_binding
        end function

        integer(c_int) function ENresetreport() bind(c, name = "ENresetreport")
            use iso_c_binding
        end function

        integer(c_int) function ENsetreport(s) bind(c, name = "ENsetreport")
            use iso_c_binding
            character(c_char), dimension(*) :: s
        end function

        integer(c_int) function ENgetversion(v) bind(c, name = "ENgetversion")
            use iso_c_binding
            integer(c_int) :: v
        end function

        integer(c_int) function ENgetcontrol(cindex, ctype, lindex, setting, nindex, level) bind(c, name = "ENgetcontrol")
            use iso_c_binding
            integer(c_int), value :: cindex
            integer(c_int) :: ctype
            integer(c_int) :: lindex
            real(c_float) :: setting
            integer(c_int) :: nindex
            real(c_float) :: level
        end function

        integer(c_int) function ENgetcount(code, count) bind(c, name = "ENgetcount")
            use iso_c_binding
            integer(c_int), value :: code
            integer(c_int) :: count
        end function

        integer(c_int) function ENgetoption(code, value) bind(c, name = "ENgetoption")
            use iso_c_binding
            integer(c_int), value :: code
            real(c_float) :: value
        end function

        integer(c_int) function ENgettimeparam(code, value) bind(c, name = "ENgettimeparam")
            use iso_c_binding
            integer(c_int), value :: code
            integer(c_long) :: value
        end function

        integer(c_int) function ENgetflowunits(code) bind(c, name = "ENgetflowunits")
            use iso_c_binding
            integer(c_int) :: code
        end function

        integer(c_int) function ENgetpatternindex(id, index) bind(c, name = "ENgetpatternindex")
            use iso_c_binding
            character(c_char), dimension(*) :: id
            integer(c_int) :: index
        end function

        integer(c_int) function ENgetpatternid(index, id) bind(c, name = "ENgetpatternid")
            use iso_c_binding
            integer(c_int), value :: index
            character(c_char), dimension(*) :: id
        end function

        integer(c_int) function ENgetpatternlen(index, len) bind(c, name = "ENgetpatternlen")
            use iso_c_binding
            integer(c_int), value :: index
            integer(c_int) :: len
        end function

        integer(c_int) function ENgetpatternvalue(index, period, value) bind(c, name = "ENgetpatternvalue")
            use iso_c_binding
            integer(c_int), value :: index
            integer(c_int), value :: period
            real(c_float) :: value
        end function

        integer(c_int) function ENgetqualtype(qualcode, tracenode) bind(c, name = "ENgetqualtype")
            use iso_c_binding
            integer(c_int) :: qualcode
            integer(c_int) :: tracenode
        end function

        integer(c_int) function ENgeterror(errcode, errmsg, n) bind(c, name = "ENgeterror")
            use iso_c_binding
            integer(c_int), value :: errcode
            character(c_char), dimension(*) :: errmsg
            integer(c_int), value :: n
        end function

        integer(c_int) function ENgetnodeindex(id, index) bind(c, name = "ENgetnodeindex")
            use iso_c_binding
            character(c_char), dimension(*) :: id
            integer(c_int) :: index
        end function

        integer(c_int) function ENgetnodeid(index, id) bind(c, name = "ENgetnodeid")
            use iso_c_binding
            integer(c_int), value :: index
            character(c_char), dimension(*) :: id
        end function

        integer(c_int) function ENgetnodetype(index, code) bind(c, name = "ENgetnodetype")
            use iso_c_binding
            integer(c_int), value :: index
            integer(c_int) :: code
        end function

        integer(c_int) function ENgetnodevalue(index, code, value) bind(c, name = "ENgetnodevalue")
            use iso_c_binding
            integer(c_int), value :: index
            integer(c_int), value :: code
            real(c_float) :: value
        end function

        integer(c_int) function ENgetlinkindex(id, index) bind(c, name = "ENgetlinkindex")
            use iso_c_binding
            character(c_char), dimension(*) :: id
            integer(c_int) :: index
        end function

        integer(c_int) function ENgetlinkid(index, id) bind(c, name = "ENgetlinkid")
            use iso_c_binding
            integer(c_int), value :: index
            character(c_char), dimension(*) :: id
        end function

        integer(c_int) function ENgetlinktype(index, code) bind(c, name = "ENgetlinktype")
            use iso_c_binding
            integer(c_int), value :: index
            integer(c_int) :: code
        end function

        integer(c_int) function ENgetlinknodes(index, node1, node2) bind(c, name = "ENgetlinknodes")
            use iso_c_binding
            integer(c_int), value :: index
            integer(c_int) :: node1
            integer(c_int) :: node2
        end function

        integer(c_int) function ENgetlinkvalue(index, code, value) bind(c, name = "ENgetlinkvalue")
            use iso_c_binding
            integer(c_int), value :: index
            integer(c_int), value :: code
            real(c_float) :: value
        end function

        integer(c_int) function ENsetcontrol(cindex, ctype, lindex, setting, nindex, level)
            use iso_c_binding
            integer(c_int), value :: cindex
            integer(c_int), value :: ctype
            integer(c_int), value :: lindex
            real(c_float), value :: setting
            integer(c_int), value :: nindex
            real(c_float), value :: level
        end function

        integer(c_int) function ENsetnodevalue(index, code, v) bind(c, name = "ENsetnodevalue")
            use iso_c_binding
            integer(c_int), value :: index
            integer(c_int), value :: code
            real(c_float), value :: v
        end function

        integer(c_int) function ENsetlinkvalue(index, code, v) bind(c, name = "ENsetlinkvalue")
            use iso_c_binding
            integer(c_int), value :: index
            integer(c_int), value :: code
            real(c_float), value :: v
        end function

        integer(c_int) function ENaddpattern(id) bind(c, name = "ENaddpattern")
            use iso_c_binding
            character(c_char), dimension(*) :: id
        end function

        integer(c_int) function ENsetpattern(index, f, n) bind(c, name = "ENsetpattern")
            use iso_c_binding
            integer(c_int), value :: index
            real(c_float) :: f
            integer(c_int), value :: n
        end function

        integer(c_int) function ENsetpatternvalue(index, period, value) bind(c, name = "ENsetpatternvalue")
            use iso_c_binding
            integer(c_int), value :: index
            integer(c_int), value :: period
            real(c_float), value :: value
        end function

        integer(c_int) function ENsettimeparam(code, value) bind(c, name = "ENsettimeparam")
            use iso_c_binding
            integer(c_int), value :: code
            integer(c_long), value :: value
        end function

        integer(c_int) function ENsetoption(code, v) bind(c, name = "ENsetoption")
            use iso_c_binding
            integer(c_int), value :: code
            real(c_float), value :: v
        end function

        integer(c_int) function ENsetstatusreport(code) bind(c, name = "ENsetstatusreport")
            use iso_c_binding
            integer(c_int), value :: code
        end function

        integer(c_int) function ENsetqualtype(qualcode, chemname, chemunits, tracenode) bind(c, name = "ENsetqualtype")
            use iso_c_binding
            integer(c_int), value :: qualcode
            character(c_char), dimension(*) :: chemname
            character(c_char), dimension(*) :: chemunits
            character(c_char), dimension(*) :: tracenode
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