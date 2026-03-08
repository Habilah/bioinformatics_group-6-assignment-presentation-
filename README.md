# Collaborative Project on Bioinformatics by Group 6 Members
**Course**: ANA4315 Introduction to Bioinformatics  
**Instructor**: Dr. Umar Ahmad  
**GitHub Repo Link**: https://github.com/[Owner'sGitHubUsername]/Collaborative-Project-on-Bioinformatics-by-Group-6-Members


## Group Members
- **Abubakar Abdulkadir** (GitHub: @sadeeqtheanatomist | Email: abubakaraigrm@gmail.com)
- **Ibrahim Sa'id** (Email: ibrahimsaiidu102002@gmail.com | GitHub: @[Ibrahim'sUsername])
- [Add other Group 6 members here]


## Assignment Overview
This repository hosts all scripts and automation workflows for Group 6's collaborative project in ANA4315 Bioinformatics Continuous Assessment 1. Each member will submit their own programming script, with a shared Bash workflow to run all contributions.


## Repository Structure
- `scripts/`: Contains individual scripts from each group member
- `docs/`: For project documentation, screenshots, or additional notes
- `automate_scripts.sh`: Bash script to run all workflows at once


## How to Run the Workflows
1. **Install Required Tools**:
   - R (for .R scripts)
   - Git (to clone the repo)

2. **Clone the Repository**:
   `git clone https://github.com/[Owner'sGitHubUsername]/Collaborative-Project-on-Bioinformatics-by-Group-6-Members.git`

3. **Navigate to the Repo Folder**:
   `cd Collaborative-Project-on-Bioinformatics-by-Group-6-Members`

4. **Run All Scripts with Bash**:
   `bash automate_scripts.sh`


## How to Add New Contributions (For All Group Members)
1. Save your script as `[YourFullName]_[Language]_script.[extension]` (e.g., `abubakar_r_script.R`)
2. Add it to the `scripts/` folder
3. Update your details in the "Group Members" section above
4. Create a pull request or share the file with the repo owner for approval


## Example Script (Abubakar Abdulkadir's R Script)
Located at `scripts/abubakar_r_script.R`:
```r
# R Script for ANA4315 Bioinformatics CA1 - Group 6
# Author: Abubakar Abdulkadir
# GitHub: @sadeeqtheanatomist
# Email: abubakaraigrm@gmail.com

full_name <- "Abubakar Abdulkadir"
email_address <- "abubakaraigrm@gmail.com"
slack_username <- "@to_be_created"
bioinformatics_interest <- "proteogenomics"

cat("=== ANA4315 Bioinformatics Profile ===\n")
cat(paste("Name:", full_name), "\n")
cat(paste("Email:", email_address), "\n")
cat(paste("Slack Username:", slack_username), "\n")
cat(paste("Area of Interest:", bioinformatics_interest), "\n")
