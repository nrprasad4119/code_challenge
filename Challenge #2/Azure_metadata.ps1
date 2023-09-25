# Define the URL for Azure instance metadata
$metadataUrl = "http://169.254.169.254/metadata/instance?api-version=2021-09-01"

# Set headers for the request
$headers = @{
    "Metadata" = "true"
}

# Make the HTTP request to retrieve instance metadata
try {
    $instanceMetadata = Invoke-RestMethod -Uri $metadataUrl -Headers $headers -Method Get -TimeoutSec 2
    $instanceMetadata | ConvertTo-Json | Out-File -FilePath instance_metadata.json -Encoding UTF8
    Write-Host "Instance metadata saved to instance_metadata.json"
}
catch {
    Write-Host "Error retrieving instance metadata: $_"
}
