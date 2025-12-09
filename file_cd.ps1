Write-Host "=== Directory Creation Menu ===" -ForegroundColor Cyan
Write-Host ""
Write-Host "This script will create the following directories:"
Write-Host " - projects"
Write-Host " - documents"
Write-Host " - backups"
Write-Host "" 
$response = Read-Host "Do you want to create these folders? (Y/N)"

# Check user response
if ($response -eq "Y" -or $response -eq "y") {
    # Create three new directories
    New-Item -ItemType Directory -Name "projects"
    New-Item -ItemType Directory -Name "documents"
    New-Item -ItemType Directory -Name "backups"

    Write-Host "`nThree directories created successfully:" -ForegroundColor Green
    Write-Host " - projects"
    Write-Host " - documents"
    Write-Host " - backups"

    # Navigate into documents folder
    Set-Location -Path "documents"

    # Ask user if they want to create subdirectories
    Write-Host ""
    Write-Host "Do you want to create three new folders inside the documents folder?" -ForegroundColor Cyan
    Write-Host " - reports"
    Write-Host " - invoices"
    Write-Host " - contracts"
    $createSubfolders = Read-Host "(Y/N)"

    if ($createSubfolders -eq "Y" -or $createSubfolders -eq "y") {
        # Create three new folders inside documents
        New-Item -ItemType Directory -Name "reports"
        New-Item -ItemType Directory -Name "invoices"
        New-Item -ItemType Directory -Name "contracts"

        Write-Host "`nThree subdirectories created inside documents:" -ForegroundColor Green
        Write-Host "  - reports"
        Write-Host "  - invoices"
        Write-Host "  - contracts"

        Write-Host ""
        Write-Host "Do you want to remove the invoices and contracts folders?" -ForegroundColor Cyan
        $deleteFolders = Read-Host "(Y/N)"

        if ($deleteFolders -eq "Y" -or $deleteFolders -eq "y") {
            # Delete two of the folders
            Remove-Item -Path "invoices"
            Remove-Item -Path "contracts"

            Write-Host "`nDeleted two subdirectories:" -ForegroundColor Yellow
            Write-Host " - invoices"
            Write-Host " - contracts"
        } else {
            Write-Host "`nFolder deletion cancelled. All subdirectories remain." -ForegroundColor Yellow
        }
    } else {
        Write-Host "`nSubfolder creation cancelled." -ForegroundColor Yellow
    }

    Write-Host "`nScript completed successfully!" -ForegroundColor Green
} else {
    Write-Host "`nFolder creation cancelled." -ForegroundColor Red
}