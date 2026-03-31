# oss-audit-24BEC10042

## Student Details
Name: Ina Robinson
Roll Number: 24BEC10042

## Chosen Software
Python

## Project Description
The project includes the analysis of open-source software - Python, its origin, use of Linux with Python, the ecosystem of open-source software, and comparison with proprietary software. Shell scripts are also included for practical knowledge of Linux operating systems.

## Scripts Description
### Script 1 – System Identity Report
This script provides a simple system summary, similar to a welcome screen. It displays details such as the Linux distribution, kernel version, current user, home directory, system uptime, and the current date and time.

### Script 2 – FOSS Package Inspector
This script verifies whether Python is available on the system using package management commands. If it is installed, it shows key details such as the version and a brief description of the package. It also includes a case statement to display a short note about the package.

### Script 3 – Disk and Permission Auditor
This script examines important system directories like /etc/, /var/log/, and /home/. It uses a loop to iterate through each directory and display key details such as its size, permissions, and ownership.

### Script 4 – Log File Analyzer
This script processes the file line by line and counts how many times a specific keyword appears. It uses a while loop along with an if condition, and a counter variable is used to keep track of the number of occurrences.

### Script 5 – Open Source Manifesto Generator
This script asks the user to enter values for three different inputs and then creates a manifesto using those responses. The generated output is saved to a file along with the current date.

## How to Run the Scripts
### Step 1: Open Terminal
Open a terminal and go to the directory where the scripts are located.
cd path/to/your/scripts

### Step 2: Give Permission
The scripts need to be made executable by giving execute permission.
chmod +x script1.sh  
chmod +x script2.sh  
chmod +x script3.sh  
chmod +x script4.sh  
chmod +x script5.sh

### Step 3: Execute Scripts
Execute the scripts.
./script1.sh  
./script2.sh  
./script3.sh  
./script4.sh  
./script5.sh  

## Dependencies
* Linux OS – Ubuntu system running in VirtualBox 
* Bash Shell
* Basic Linux commands – uname, whoami, dpkg, grep, ls, etc.
