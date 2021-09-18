New-Item -ItemType Directory -Force out
Remove-Item -Recurse out/*

# Firefox
Rename-Item -Path "manifest_firefox.json" -NewName "manifest.json"
$exclude_firefox = @("*.git*", "README.md", "manifest_chromium.json", "prepare_extension.sh", "prepare_extension.ps1")
$files_firefox = Get-ChildItem -Exclude $exclude_firefox
Compress-Archive -Path $files_firefox -DestinationPath "out/startpagina_firefox.zip" -CompressionLevel Fastest
Rename-Item -Path "manifest.json" -NewName "manifest_firefox.json"

# Chromium
New-Item -ItemType Directory -Force out/startpagina_chromium
Rename-Item -Path "manifest_chromium.json" -NewName "manifest.json"
$exclude_chromium = @("*.git*", "README.md", "manifest_firefox.json", "prepare_extension.sh", "prepare_extension.ps1", "out")
$files_chromium = Get-ChildItem -Exclude $exclude_firefox
Copy-Item -Path $files_chromium -Exclude $exclude_chromium -Destination "out/startpagina_chromium"
Rename-Item -Path "manifest.json" -NewName "manifest_chromium.json"