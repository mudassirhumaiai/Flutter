# PowerShell script to push to sultan branch
$env:GIT_PAGER = 'cat'

# Check if sultan branch exists
$branchExists = git branch --list sultan

if ($branchExists) {
    Write-Host "Switching to sultan branch"
    git checkout sultan
} else {
    Write-Host "Creating and switching to sultan branch"
    git checkout -b sultan
}

# Add all files
git add .

# Commit changes
git commit -m "Update code for sultan branch"

# Push to remote
git push -u origin sultan

Write-Host "Completed pushing to sultan branch" 