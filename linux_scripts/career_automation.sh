#!/bin/bash

################################################################################
# Career Folder Automation Script
# Student: Yagyansh Singh Ahlawat (2501010120)
# Course: ETCCCP105 - Computer Science Fundamentals & Career Pathways
# Purpose: Automate career-related folder structure and system monitoring
################################################################################

# Color codes for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Script configuration
CAREER_BASE_DIR="$HOME/CareerDevelopment"
LOG_FILE="$CAREER_BASE_DIR/logs/automation_log.txt"
DATE=$(date '+%Y-%m-%d %H:%M:%S')

################################################################################
# Function: Display Banner
################################################################################
display_banner() {
    clear
    echo -e "${BLUE}╔════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${BLUE}║        CAREER DEVELOPMENT AUTOMATION SYSTEM                ║${NC}"
    echo -e "${BLUE}║        Cybersecurity Career Path Manager                   ║${NC}"
    echo -e "${BLUE}║        Student: Yagyansh Singh Ahlawat (2501010120)       ║${NC}"
    echo -e "${BLUE}╚════════════════════════════════════════════════════════════╝${NC}"
    echo ""
}

################################################################################
# Function: Create Career Folder Structure
################################################################################
create_folder_structure() {
    echo -e "${YELLOW}[INFO]${NC} Creating career folder structure..."
    
    # Main directory
    mkdir -p "$CAREER_BASE_DIR"
    
    # Create subdirectories
    mkdir -p "$CAREER_BASE_DIR/Certifications/CEH"
    mkdir -p "$CAREER_BASE_DIR/Certifications/CISSP"
    mkdir -p "$CAREER_BASE_DIR/Certifications/CompTIA_Security+"
    mkdir -p "$CAREER_BASE_DIR/Projects/Cybersecurity"
    mkdir -p "$CAREER_BASE_DIR/Projects/Portfolio"
    mkdir -p "$CAREER_BASE_DIR/Resume_CVs/Drafts"
    mkdir -p "$CAREER_BASE_DIR/Resume_CVs/Final"
    mkdir -p "$CAREER_BASE_DIR/JobApplications/Applied"
    mkdir -p "$CAREER_BASE_DIR/JobApplications/Interviews"
    mkdir -p "$CAREER_BASE_DIR/JobApplications/Offers"
    mkdir -p "$CAREER_BASE_DIR/LearningResources/Books"
    mkdir -p "$CAREER_BASE_DIR/LearningResources/OnlineCourses"
    mkdir -p "$CAREER_BASE_DIR/LearningResources/Practice_Labs"
    mkdir -p "$CAREER_BASE_DIR/Networking/LinkedIn_Connections"
    mkdir -p "$CAREER_BASE_DIR/Networking/Events_Conferences"
    mkdir -p "$CAREER_BASE_DIR/Hackathons/CTF_Competitions"
    mkdir -p "$CAREER_BASE_DIR/Hackathons/Projects"
    mkdir -p "$CAREER_BASE_DIR/Internships/Applications"
    mkdir -p "$CAREER_BASE_DIR/Internships/Completed"
    mkdir -p "$CAREER_BASE_DIR/Skills_Tracker/Technical"
    mkdir -p "$CAREER_BASE_DIR/Skills_Tracker/Soft_Skills"
    mkdir -p "$CAREER_BASE_DIR/logs"
    
    echo -e "${GREEN}[SUCCESS]${NC} Career folder structure created at: $CAREER_BASE_DIR"
    log_activity "Created career folder structure"
}

################################################################################
# Function: Create README files for each directory
################################################################################
create_readme_files() {
    echo -e "${YELLOW}[INFO]${NC} Creating README files..."
    
    # Main README
    cat > "$CAREER_BASE_DIR/README.md" << 'EOF'
# Career Development Directory
## Yagyansh Singh Ahlawat - Cybersecurity Career Path

This directory contains organized resources for career development in cybersecurity.

### Directory Structure:
- **Certifications/**: Study materials and certificates
- **Projects/**: Portfolio projects and assignments
- **Resume_CVs/**: Resume versions and CV drafts
- **JobApplications/**: Job application tracking
- **LearningResources/**: Books, courses, practice labs
- **Networking/**: Professional connections and events
- **Hackathons/**: CTF competitions and hackathon projects
- **Internships/**: Internship applications and documentation
- **Skills_Tracker/**: Technical and soft skills progress

Last Updated: $(date '+%Y-%m-%d')
EOF

    # Certifications README
    cat > "$CAREER_BASE_DIR/Certifications/README.md" << 'EOF'
# Certification Study Materials

## Target Certifications:
1. CompTIA Security+ (6 months)
2. CEH - Certified Ethical Hacker (2 years)
3. CISSP - Certified Information Systems Security Professional (4-5 years)

Store study materials, practice tests, and certificates here.
EOF

    echo -e "${GREEN}[SUCCESS]${NC} README files created"
    log_activity "Created README files"
}

################################################################################
# Function: Check System Uptime and Resources
################################################################################
check_system_status() {
    echo -e "${YELLOW}[INFO]${NC} Checking system status..."
    
    # Get system uptime
    UPTIME=$(uptime -p)
    
    # Get load average
    LOAD=$(cat /proc/loadavg | awk '{print $1, $2, $3}')
    
    # Get memory usage
    MEM_TOTAL=$(free -h | awk '/^Mem:/ {print $2}')
    MEM_USED=$(free -h | awk '/^Mem:/ {print $3}')
    MEM_PERCENT=$(free | awk '/^Mem:/ {printf("%.1f"), $3/$2 * 100}')
    
    # Get disk usage
    DISK_USAGE=$(df -h ~ | awk 'NR==2 {print $5}' | tr -d '%')
    
    # Display system information
    echo ""
    echo -e "${BLUE}╔════════════════ SYSTEM STATUS ════════════════╗${NC}"
    echo -e "${BLUE}║${NC} Uptime:       $UPTIME"
    echo -e "${BLUE}║${NC} Load Average: $LOAD"
    echo -e "${BLUE}║${NC} Memory:       $MEM_USED / $MEM_TOTAL ($MEM_PERCENT%)"
    echo -e "${BLUE}║${NC} Disk Usage:   $DISK_USAGE%"
    echo -e "${BLUE}╚═══════════════════════════════════════════════╝${NC}"
    echo ""
    
    # Alert if disk usage is high
    if [ "$DISK_USAGE" -gt 80 ]; then
        echo -e "${RED}[WARNING]${NC} Disk usage is above 80%!"
    fi
    
    log_activity "System status check completed - Uptime: $UPTIME, Disk: $DISK_USAGE%"
}

################################################################################
# Function: Create Skills Tracker Template
################################################################################
create_skills_tracker() {
    echo -e "${YELLOW}[INFO]${NC} Creating skills tracker..."
    
    cat > "$CAREER_BASE_DIR/Skills_Tracker/Technical/cybersecurity_skills.md" << 'EOF'
# Cybersecurity Technical Skills Tracker
## Yagyansh Singh Ahlawat (2501010120)

### Network Security
- [ ] TCP/IP Protocol Suite
- [ ] Firewalls & IDS/IPS
- [ ] VPN Configuration
- [ ] Network Scanning (Nmap)

### Penetration Testing
- [ ] Metasploit Framework
- [ ] Burp Suite
- [ ] Kali Linux Tools
- [ ] OWASP Top 10

### Security Tools
- [ ] Wireshark
- [ ] Nessus
- [ ] Snort
- [ ] John the Ripper

### Programming & Scripting
- [ ] Python (Security Automation)
- [ ] Bash Scripting
- [ ] PowerShell
- [ ] SQL Injection Testing

### Update Date: $(date '+%Y-%m-%d')
EOF

    echo -e "${GREEN}[SUCCESS]${NC} Skills tracker created"
    log_activity "Created skills tracker template"
}

################################################################################
# Function: Create Job Application Template
################################################################################
create_job_template() {
    echo -e "${YELLOW}[INFO]${NC} Creating job application template..."
    
    cat > "$CAREER_BASE_DIR/JobApplications/application_template.md" << 'EOF'
# Job Application Record

## Company Information
- **Company Name:** 
- **Position:** 
- **Location:** 
- **Application Date:** 
- **Deadline:** 
- **Job Portal:** 

## Job Requirements
### Required Skills:
- 

### Preferred Skills:
- 

### Required Certifications:
- 

## Application Status
- [ ] Resume Submitted
- [ ] Cover Letter Sent
- [ ] Online Assessment Completed
- [ ] HR Interview
- [ ] Technical Interview
- [ ] Final Round
- [ ] Offer Received

## Match Score: ___%

## Notes:
- 

## Follow-up Actions:
- 

---
Created: $(date '+%Y-%m-%d')
EOF

    echo -e "${GREEN}[SUCCESS]${NC} Job application template created"
    log_activity "Created job application template"
}

################################################################################
# Function: Generate Weekly Progress Report
################################################################################
generate_progress_report() {
    echo -e "${YELLOW}[INFO]${NC} Generating weekly progress report..."
    
    REPORT_FILE="$CAREER_BASE_DIR/logs/weekly_report_$(date '+%Y-%m-%d').txt"
    
    cat > "$REPORT_FILE" << EOF
╔══════════════════════════════════════════════════════════════╗
║           WEEKLY CAREER PROGRESS REPORT                      ║
║           Student: Yagyansh Singh Ahlawat (2501010120)      ║
║           Generated: $(date '+%Y-%m-%d %H:%M:%S')                  ║
╚══════════════════════════════════════════════════════════════╝

DIRECTORY STATISTICS:
--------------------
Certifications Materials: $(find "$CAREER_BASE_DIR/Certifications" -type f 2>/dev/null | wc -l) files
Project Files: $(find "$CAREER_BASE_DIR/Projects" -type f 2>/dev/null | wc -l) files
Job Applications Tracked: $(find "$CAREER_BASE_DIR/JobApplications" -type f 2>/dev/null | wc -l) files
Learning Resources: $(find "$CAREER_BASE_DIR/LearningResources" -type f 2>/dev/null | wc -l) files

SYSTEM INFORMATION:
------------------
System Uptime: $(uptime -p)
Disk Space Used: $(df -h ~ | awk 'NR==2 {print $5}')
Last Login: $(last -1 $USER | head -1 | awk '{print $4, $5, $6, $7}')

UPCOMING GOALS:
--------------
[ ] Complete CompTIA Security+ course module
[ ] Practice 5 CTF challenges
[ ] Update LinkedIn profile
[ ] Apply to 3 cybersecurity positions
[ ] Review one security whitepaper

═══════════════════════════════════════════════════════════════
EOF

    echo -e "${GREEN}[SUCCESS]${NC} Progress report generated: $REPORT_FILE"
    cat "$REPORT_FILE"
    log_activity "Generated weekly progress report"
}

################################################################################
# Function: Backup Career Data
################################################################################
backup_career_data() {
    echo -e "${YELLOW}[INFO]${NC} Creating backup of career data..."
    
    BACKUP_DIR="$HOME/CareerBackup"
    BACKUP_FILE="$BACKUP_DIR/career_backup_$(date '+%Y%m%d_%H%M%S').tar.gz"
    
    mkdir -p "$BACKUP_DIR"
    
    tar -czf "$BACKUP_FILE" -C "$HOME" "CareerDevelopment" 2>/dev/null
    
    if [ $? -eq 0 ]; then
        BACKUP_SIZE=$(du -h "$BACKUP_FILE" | cut -f1)
        echo -e "${GREEN}[SUCCESS]${NC} Backup created: $BACKUP_FILE ($BACKUP_SIZE)"
        log_activity "Created backup: $BACKUP_FILE"
    else
        echo -e "${RED}[ERROR]${NC} Backup failed!"
    fi
}

################################################################################
# Function: Log Activity
################################################################################
log_activity() {
    mkdir -p "$(dirname "$LOG_FILE")"
    echo "[$DATE] $1" >> "$LOG_FILE"
}

################################################################################
# Function: Display Menu
################################################################################
display_menu() {
    echo ""
    echo -e "${BLUE}═══════════════ AUTOMATION MENU ═══════════════${NC}"
    echo "1. Create Career Folder Structure"
    echo "2. Check System Status"
    echo "3. Create Skills Tracker"
    echo "4. Generate Weekly Progress Report"
    echo "5. Backup Career Data"
    echo "6. Run All Tasks"
    echo "7. Exit"
    echo -e "${BLUE}═══════════════════════════════════════════════${NC}"
    echo -n "Enter your choice [1-7]: "
}

################################################################################
# Main Execution
################################################################################
main() {
    display_banner
    
    while true; do
        display_menu
        read -r choice
        
        case $choice in
            1)
                create_folder_structure
                create_readme_files
                ;;
            2)
                check_system_status
                ;;
            3)
                create_skills_tracker
                create_job_template
                ;;
            4)
                generate_progress_report
                ;;
            5)
                backup_career_data
                ;;
            6)
                echo -e "${YELLOW}[INFO]${NC} Running all tasks..."
                create_folder_structure
                create_readme_files
                create_skills_tracker
                create_job_template
                check_system_status
                generate_progress_report
                echo -e "${GREEN}[SUCCESS]${NC} All tasks completed!"
                ;;
            7)
                echo -e "${GREEN}Thank you for using Career Automation System!${NC}"
                log_activity "Script ended normally"
                exit 0
                ;;
            *)
                echo -e "${RED}[ERROR]${NC} Invalid choice. Please try again."
                ;;
        esac
        
        echo ""
        echo -e "${YELLOW}Press Enter to continue...${NC}"
        read -r
        display_banner
    done
}

# Run main function
main

################################################################################
# END OF SCRIPT
################################################################################