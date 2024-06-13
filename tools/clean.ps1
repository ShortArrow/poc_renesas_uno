#Remove-Item -Recurse -Force -Path build/core
#Remove-Item -Recurse -Force -Path build/libraries
Remove-Item -Recurse -Force -Path build/sketch
Get-ChildItem -Path build -File | Remove-Item
