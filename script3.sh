#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Ina Robinson
# Course: Open Source Software.
# -------------------------------
# Section 1: Directory List
# -------------------------------
# List of important Linux directories
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")
echo "======================================"
echo " Directory Audit Report"
echo "======================================"
# -------------------------------
# Section 2: Loop Through Directories
# -------------------------------
for DIR in "${DIRS[@]}"; do
 # Check if directory exists
 if [ -d "$DIR" ]; then
 # Get permissions, owner, group
 PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
 # Get size of directory
 SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
 # Display output
 echo "Directory : $DIR"
 echo "Permissions & Owner : $PERMS"
 echo "Size : $SIZE"
 echo "--------------------------------------"
 else
 echo "$DIR does not exist on this system"
 fi
done
echo "======================================"
echo " End of Directory Audit"
echo "======================================"
