#!/usr/bin/bash

# Define the URLs for the files
zip_data="https://www.sascrunchtraining.com/uploads/5/6/1/0/5610554/project_1_sdtm_dm.zip"
cdm_vars="https://www.sascrunchtraining.com/uploads/5/6/1/0/5610554/cdm_variables.xlsx"
dm_only="https://www.sascrunchtraining.com/uploads/5/6/1/0/5610554/dm_only.xlsx"

# Create the directory if it doesn't exist
mkdir -p ~/projects/pharma_playground/data

# Change to the directory
cd ~/projects/pharma_playground/data

# Download the files
curl -O $zip_data
curl -O $cdm_vars
curl -O $dm_only

# Unzip the .zip file and remove it
unzip project_1_sdtm_dm.zip
rm project_1_sdtm_dm.zip

# Inform the user
echo "Files downloaded and unzipped successfully."
