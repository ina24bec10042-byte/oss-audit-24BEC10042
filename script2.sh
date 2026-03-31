#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Ina Robinson
# Course: Open Source Software.
# -------------------------------
# Section 1: Variable Declaration
# -------------------------------
PACKAGE="python3" # Name of the package to check
# -------------------------------
# Section 2: Check Installation
# -------------------------------
# Using dpkg to check if package is installed
if dpkg -s $PACKAGE &> /dev/null; then
 echo "--------------------------------------"
 echo "$PACKAGE is installed on this system."
 # Display only important details
 echo "Package Information:"
 dpkg -s $PACKAGE | grep -E 'Package|Version|Description'
else
 echo "--------------------------------------"
 echo "$PACKAGE is NOT installed."
fi
# -------------------------------
# Section 3: Case Statement
# -------------------------------
# Gives a short description of the package
case $PACKAGE in
 python3)
 echo "Python: A powerful open-source programming language used in many domains."
 ;;
 apache2)
 echo "Apache: A widely used open-source web server."
 ;;
 mysql)
 echo "MySQL: An open-source database system used in applications."
 ;;
 vlc)
 echo "VLC: An open-source multimedia player."
 ;;
 *)
 echo "No description available for this package."
 ;;
esac
echo "--------------------------------------"
echo " End of Package Inspection"
echo "--------------------------------------"
