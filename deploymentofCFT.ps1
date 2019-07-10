# Define variables for the S3 Bucket name and CloudFormation filename
$BucketName = 'yetanothertestbucket'
$CloudFormationFile = 'cftforminiproject.json'

# Write out a local file with the JSON CloudFormation template, using a PowerShell "here-string"
Set-Content -Path $CloudFormationFile -Value @'
Resources:
    mybucket:
        Type: AWS::S3::Bucket
'@

# Create an AWS S3 Bucket
New-S3Bucket -BucketName $BucketName

# Upload the JSON CloudFormation template to the S3 Bucket
Write-S3Object -BucketName $BucketName -File $CloudFormationFile

# Deploy the CloudFormation Stack from the S3 Object URL.
# NOTE: We construct the S3 Object URL using the .NET String Formatting technique.
$Stack = @{
    StackName = 'evanselephanttesting'
    TemplateUrl = 'https://{0}.s3.amazonaws.com/{1}' -f $BucketName, $CloudFormationFile
}
New-CFNStack @Stack