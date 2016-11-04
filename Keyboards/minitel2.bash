#!/usr/bin/env bash
# Michael Serisier 2016



#################
# Configuration #
#################

BuildPath="minitel2"

## KLL Configuration ##
BaseMap="scancode_map"
DefaultMap="md1Overlay stdFuncMap"
PartialMaps[1]="minitel2_shift"

##########################
# Advanced Configuration #
##########################

# Don't change the variables in this section unless you know what you're doing
# These are useful for completely custom keyboards
# NOTE: Changing any of these variables will require a force build to compile correctly

# Keyboard Module Configuration
ScanModule="minitel2"
MacroModule="PartialMap"
OutputModule="pjrcUSB"
DebugModule="full"

# Microcontroller
Chip="mk20dx256"

# Compiler Selection
Compiler="gcc"



########################
# Bash Library Include #
########################

# Shouldn't need to touch this section

# Check if the library can be found
if [ ! -f cmake.bash ]; then
	echo "ERROR: Cannot find 'cmake.bash'"
	exit 1
fi

# Load the library
source cmake.bash

