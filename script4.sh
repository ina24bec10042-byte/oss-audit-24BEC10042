bin/bash
# Script 4: Log File Analyzer
# Author: Ina Robinson
# Course: Open Source Software
# -------------------------------
# Section 1: Variables
# -------------------------------
LOGFILE="/etc/passwd" # Log file path
KEYWORD="root" # Keyword to search
COUNT=0 # Counter variable
# -------------------------------
# Section 2: Check File Exists
# -------------------------------
if [ ! -f "$LOGFILE" ]; then
 echo "Error: Log file not found!"
 exit 1
fi
echo "Analyzing log file: $LOGFILE"
echo "Searching for keyword: $KEYWORD"
echo "--------------------------------------"
# -------------------------------
# Section 3: Read File Line by Line
# -------------------------------
while IFS= read -r LINE; do

 # Check if line contains keyword (case insensitive)
 if echo "$LINE" | grep -iq "$KEYWORD"; then
 COUNT=$((COUNT + 1))
 fi
done < "$LOGFILE"
# -------------------------------
# Section 4: Display Result
# -------------------------------
echo "Keyword '$KEYWORD' found $COUNT times."
echo "--------------------------------------"
echo " End of Log Analysis"
echo "--------------------------------------"
