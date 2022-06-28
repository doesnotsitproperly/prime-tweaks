# Get version

$contributors = Invoke-WebRequest "https://api.github.com/repos/doesnotsitproperly/prime-tweaks/contributors" | ConvertFrom-Json

$numberOfCommits = 0
foreach ($contributor in $contributors) {
    $numberOfCommits += $contributor.contributions
}

# Write to pack.mcmeta

$srcDir = Join-Path $PSScriptRoot "src"
$metaFile = Join-Path $srcDir "pack.mcmeta"

if (Test-Path $metaFile) {
    Remove-Item $metaFile
}

$n = [System.Environment]::NewLine
$indent = "    "
$output =
    "{" + $n +
    $indent + "`"pack`": {" + $n +
    $indent + $indent + "`"pack_format`": 10," + $n +
    $indent + $indent + "`"description`": `"Prime Tweaks version ${numberOfCommits}`"" + $n +
    $indent + "}" + $n +
    "}"

Write-Output $output | Out-File $metaFile

# Compress archive

$archive = Join-Path $PSScriptRoot "PrimeTweaks.zip"
if (Test-Path $archive) {
    Remove-Item $archive
}
Compress-Archive (Join-Path $srcDir "*") -DestinationPath $archive

# Delete pack.mcmeta

Remove-Item $metaFile
