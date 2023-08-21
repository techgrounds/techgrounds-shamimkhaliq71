# Create a new script.

# Use user input to ask for their information (first name, last name, job title, company). 
# Store the information in a dictionary.
# Write the information to a csv file (comma-separated values). 
# The data should not be overwritten when you run the script multiple times.

import csv
import os

# Define the CSV file name
csv_file = "user_info.csv"

# Check if the CSV file exists, if not, create it with header
if not os.path.exists(csv_file):
    with open(csv_file, "w", newline="") as file:
        writer = csv.writer(file)
        writer.writerow(["First name", "Last name", "Job title", "Company"])

# Get user information
first_name = input("Enter your first name: ")
last_name = input("Enter your last name: ")
job_title = input("Enter your job title: ")
company = input("Enter your company: ")

# Store the information in a dictionary
user_info = {
    "First name": first_name,
    "Last name": last_name,
    "Job title": job_title,
    "Company": company
}

# Append the information to the CSV file
with open(csv_file, "a", newline="") as file:
    writer = csv.writer(file)
    writer.writerow([user_info["First name"], user_info["Last name"], user_info["Job title"], user_info["Company"]])

print("Information saved successfully to", csv_file)

