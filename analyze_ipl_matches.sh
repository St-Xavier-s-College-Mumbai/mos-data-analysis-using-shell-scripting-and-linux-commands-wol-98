#!/bin/bash

# Step 1: Clean the data
echo "Cleaning the data..."
tail -n +2 "IPL Matches.csv" > cleaned_ipl_matches.csv

# Step 2: Extract insights
echo "Extracting insights..."

# Insight 1: Count the number of matches per season
echo "Number of matches per season:"
cut -d, -f3 cleaned_ipl_matches.csv | sort | uniq -c

# Insight 2: Count the number of matches won by each team
echo -e "\nNumber of matches won by each team:"
cut -d, -f13 cleaned_ipl_matches.csv | sort | uniq -c

# Insight 3: Find the most common toss decision
echo -e "\nMost common toss decision:"
cut -d, -f9 cleaned_ipl_matches.csv | sort | uniq -c | sort -nr | head -1

# Insight 4: Count the number of matches per city
echo -e "\nNumber of matches per city:"
cut -d, -f4 cleaned_ipl_matches.csv | sort | uniq -c

# Insight 5: Find the player of the match most frequently
echo -e "\nPlayer of the match most frequently:"
cut -d, -f16 cleaned_ipl_matches.csv | sort | uniq -c | sort -nr | head -1

# Insight 6: Count the number of matches per venue
echo -e "\nNumber of matches per venue:"
cut -d, -f17 cleaned_ipl_matches.csv | sort | uniq -c

# Insight 7: Count the number of matches with a specific result type (e.g., "Win By Runs")
echo -e "\nNumber of matches with result type 'Win By Runs':"
grep "Win By Runs" cleaned_ipl_matches.csv | wc -l

# Insight 8: Count the number of matches where the toss was won by the team that also won the match
echo -e "\nNumber of matches where the toss winner also won the match:"
awk -F, '$9 == $13 {count++} END {print count}' cleaned_ipl_matches.csv

# Insight 9: Find the average win by runs
echo -e "\nAverage win by runs:"
awk -F, '$14 != "" {sum += $14; count++} END {print sum/count}' cleaned_ipl_matches.csv

# Insight 10: Find the average win by wickets
echo -e "\nAverage win by wickets:"
awk -F, '$15 != "" {sum += $15; count++} END {print sum/count}' cleaned_ipl_matches.csv

echo -e "\nAnalysis complete."
