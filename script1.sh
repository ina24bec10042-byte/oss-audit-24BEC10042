#!/bin/bash
# Script 1: System Identity Report
# Author: Ina Robinson
# Course: Open Source Software
# ---------------------------------
# Section 1: Variables
# ---------------------------------
STUDENT_NAME="Ina Robinson"   # Stores student name
SOFTWARE_CHOICE="Python"      # Stores chosen software name
# ---------------------------------
#Section 2: Collect System Info
# ---------------------------------
KERNEL=$(uname -r)     #Gets kernel version
USER_NAME=$(whoami)    #Gets current logged-in user
UPTIME=$(uptime -p)    #Gets system uptime
DATE=$(date)           #Gets current date and time
HOME_DIR=$HOME         #Gets user's home directory
# Get Linux distrubution name from os-release file
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d '"' -f2)
# ---------------------------------
# Section 3: Display Output
# ---------------------------------
echo "======================================"
echo "   Open Source Audit - $STUDENT_NAME"
echo "======================================"
echo "Software Chosen : $SOFTWARE_CHOICE"
echo "Distribution    : $DISTRO"
echo "Kernel Version  : $KERNEL"
echo "Current User    : $USER_NAME"
echo "Home Directory  : $HOME_DIR"
echo "System Uptime   : $UPTIME"
echo "Date & Time     : $DATE"
# Display license information
echo "License Info    : GNU General Public License (GPL)"
echo "======================================"
echo "      End of System Report"
echo "======================================"
