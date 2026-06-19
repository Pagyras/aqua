$ErrorActionPreference = "Stop"

$repoUrl = "https://github.com/Pagyras/aqua.git"
$source = "C:\Users\MerV1ng\Documents\New project 4\aqua-main"
$workRoot = "C:\Users\MerV1ng\Documents\New project 4"
$stamp = Get-Date -Format "yyyyMMddHHmmss"
$target = Join-Path $workRoot "aqua-upload-$stamp"

Write-Host "Cloning $repoUrl ..."
git clone $repoUrl $target

Write-Host "Copying project files ..."
robocopy $source $target /E /XD .git node_modules /XF upload-to-github.ps1 | Out-Host
$robocopyCode = $LASTEXITCODE
if ($robocopyCode -gt 7) {
  throw "Robocopy failed with exit code $robocopyCode"
}

Set-Location $target

Write-Host "Building site ..."
npm.cmd install
npm.cmd run build

Write-Host "Creating commit ..."
git add -A
$hasChanges = git status --porcelain
if (-not $hasChanges) {
  Write-Host "No changes to commit."
  exit 0
}

git commit -m "Update about and project texts"

Write-Host "Pushing to main ..."
git push origin main

Write-Host "Done. Uploaded commit:"
git log --oneline -1
