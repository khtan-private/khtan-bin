aws-vault exec zapproved-platform-dev-write powershell -- $env:USERPROFILE\.aws\Update-AwsCredentials
aws-vault exec zapproved-dev-lhp-write powershell -- $env:USERPROFILE\.aws\Update-AwsCredentials -CredentialsFilePath C:\aws_service_credentials\credentials
