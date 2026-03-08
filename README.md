# DevoCp
# Log Archive Tool

A bash script tool that compresses and archives log files from a specified directory.

## What it does
- Accepts a log directory as a command line argument
- Compresses the logs into a tar.gz file
- Stores the archive in a new directory called `logs_archive`
- Logs the date and time of each archive to a log file

## How to Run

### Prerequisites
- A Linux server
- Bash shell

### Steps
1. Clone the repo:
   git clone https://github.com/AayushBi13/DevCops.git

2. Make the script executable:
   chmod +x log_archive.sh

3. Run the script:
   ./log_archive.sh <log-directory>

### Example
   ./log_archive.sh /var/log

## Output
- Archive file: ./logs_archive/logs_archive_YYYYMMDD_HHMMSS.tar.gz
- Archive log:  ./logs_archive/archive_log.txt

## Project Page
https://roadmap.sh/projects/log-archive-tool