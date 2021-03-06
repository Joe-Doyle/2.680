#!/bin/bash -e
SHORESIDE="shoreside"
COMMUNITY_1="alpha"
COMMUNITY_2="bravo"

#-------------------------------------------------------
#  Part 1: Check for and handle command-line arguments
#-------------------------------------------------------
TIME_WARP=1
for ARGI; do
    if [ "${ARGI}" = "--help" -o "${ARGI}" = "-h" ] ; then
	printf "%s [SWITCHES] [time_warp]   \n" $0
	printf "  --help, -h         \n" 
	exit 0;
    elif [ "${ARGI//[^0-9]/}" = "$ARGI" -a "$TIME_WARP" = 1 ]; then 
        TIME_WARP=$ARGI
    else 
	printf "Bad Argument: %s \n" $ARGI
	exit 0
    fi
done


#-------------------------------------------------------
#  Part 2: Launch the processes
#-------------------------------------------------------
printf "Launching the %s MOOS Community (WARP=%s) \n"  $COMMUNITY_1 $TIME_WARP
pAntler $COMMUNITY_1.moos --MOOSTimeWarp=$TIME_WARP >& /dev/null &

printf "Launching the %s MOOS Community (WARP=%s) \n"  $COMMUNITY_2 $TIME_WARP
pAntler $COMMUNITY_2.moos --MOOSTimeWarp=$TIME_WARP >& /dev/null &

printf "Launching the %s MOOS Community (WARP=%s) \n"  $SHORESIDE $TIME_WARP
pAntler $SHORESIDE.moos --MOOSTimeWarp=$TIME_WARP >& /dev/null &


printf "Killing all processes ... \n" 

printf "Done killing processes.   \n"

