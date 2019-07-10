# Elephant
Scripts and resources for Mini Project
CloudFormation Template Instructions:
PREREQUISITES REQUIRED:
1. AWS Tools for Windows Powershell installed and configured
1. Place all files from repository in same folder
2. Run deploymentofCFT.ps1. This script executes the CloudFormation Template, creating a bucket with the name "yetanothertestbucket," a stack with the name "evanselephanttesting," and a website with the URL yetanothertestbucket.s3.amazonaws.com/cftforminiproject
3. Run cleanup.ps1 to delete the evanselephanttesting stack. This does not delete the bucket. This can be done manually in S3 Management 

Test Script Instructions:
PREREQUISITES REQUIRED:
1. Windows Powershell (NOT ISE)
2. In between steps 2 and 3 of CloudFormation Template Instructions
INSTRUCTIONS:
1. Place URLList.txt in same folder as other files
2. Ctrl + A, Ctrl + C text from Powershell file into Powershell to bypass signing if signing is enabled (else can run directly,) then press enter 
3. HTM page named "TEST.htm" will be created on desktop and will open with results of automated test which displays the URL of the page tested, the status code, the response length (RawResponse, including tags) and the time taken in milliseconds

CLEANUP:
1. Delete "TEST.htm", URLList.txt from Desktop. Only one copy "TEST.htm" will be created, as the test script overwrites previous runs.
2. Delete created bucket in S3 Management

