**MOS Data Analysis Using Shell Scripting and Linux Commands**
**Project Overview**
This project performs data analysis on IPL (Indian Premier League) match data using shell scripting and standard Linux commands. The goal is to process, clean, and visualize match statistics entirely from the command line without relying on heavy external tools or the use of high programming languages such as python or R programming language. 

**Files in the Repository**
• IPL Matches.csv → Raw dataset containing IPL match records.
• cleaned_ipl_matches.csv → Processed dataset after cleaning.
• analyze_ipl_matches.sh → Shell script that automates the data cleaning and analysis process.

**Tools & Technologies**
• Bash Shell Scripting
• Linux Commands (`grep`, `awk`, `cut`, `sort`, `uniq`, `wc`, etc.)
• CSV Data Processing
• Basic Data Visualization (via text output and optional plotting tools)

**Key Features**
1. Data Cleaning – Removing unnecessary columns, formatting text, and filtering rows.
2. Data Aggregation – Summarizing match counts, team performance, and player statistics.
3. Sorting & Filtering – Finding top-performing teams/players and most frequent venues.
4. Reusable Script – The shell script can be run multiple times on different datasets.

**How to Run the Project**
1. Clone this repository:
   git clone https://github.com/St-Xavier-s-College-Mumbai/mos-data-analysis-using-shell-scripting-and-linux-commands-wol-98.git
   cd mos-data-analysis-using-shell-scripting-and-linux-commands-wol-98
2. Make the script executable:
   chmod +x analyze_ipl_matches.sh
3. Run the script:
   ./analyze_ipl_matches.sh
4. View the results – Processed data will be saved in cleaned_ipl_matches.csv and analysis output will be displayed in the terminal.

**Sample Output**
=== IPL Data Analysis ===
Total Matches: 816
Top Winning Team: Mumbai Indians
Most Frequent Venue: Eden Gardens
Toss Winning Advantage: Yes

**Author**
Name: Wol Wol Ngor (GitHub username: wol-98)
Student at St. Xavier's College, Mumbai
Assignment: MOS – Data Analysis Using Shell Scripting and Linux Commands
