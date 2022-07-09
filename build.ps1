# Get version

$contributors = Invoke-WebRequest "https://api.github.com/repos/doesnotsitproperly/prime-tweaks/contributors" | ConvertFrom-Json

$numberOfCommits = 0
foreach ($contributor in $contributors) {
    $numberOfCommits += $contributor.contributions
}

# Edit pack.mcmeta

$srcDir = Join-Path $PSScriptRoot "src"
$metaFile = Join-Path $srcDir "pack.mcmeta"

$metaData = Get-Content $metaFile

try {
    Write-Output ($metaData -replace "{VERSION}", $numberOfCommits) | Out-File $metaFile
} catch {
    Write-Output "Unable to write `"${metaFile}`""
}

# Compress archive

$archive = Join-Path $PSScriptRoot "PrimeTweaks.zip"
try {
    Compress-Archive (Join-Path $srcDir "*") -DestinationPath $archive -Update
} catch {
    Write-Output "Unable to write `"${archive}`""
}

# Reset pack.mcmeta

try {
    Write-Output $metaData | Out-File $metaFile
} catch {
    Write-Output "Unable to write `"${metaFile}`""
}
