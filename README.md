# Elephant
Scripts and resources for Mini Project

PREREQUISITES REQUIRED:
1. Windows Powershell (NOT ISE)

INSTRUCTIONS:
1. Place URLList.txt on Desktop
2. Ctrl + A, Ctrl + C text from Powershell file into Powershell to bypass signing if signing is enabled (else can run directly,) then press enter 
3. HTM page named "TEST.htm" will be created on desktop and will open with results of automated test which displays the URL of the page tested, the status code, the response length (RawResponse, including tags) and the time taken in milliseconds

CLEANUP:
1. Delete "TEST.htm", URLList.txt from Desktop. Only one copy "TEST.htm" will be created, as the test script overwrites previous runs.

NOTES:
Webpage was created through AWS, specifically an S3 bucket. URL for website is in URLList.txt.
