#!/bin/bash

export DOTNET_CLI_TELEMETRY_OPTOUT='true'

projFile="/home/$USER/source/XIVLauncher.Core/src/XIVLauncher.Core/XIVLauncher.Core.csproj"
outputDir="/home/$USER/Games/XIVLauncher-local/"

rm --recursive --force "${outputDir}"*

dotnet publish "${projFile}" \
  --runtime linux-x64 --configuration Release \
  --self-contained false \
  --output "${outputDir}" \
  --property:DefineConstants=WINE_XIV_ARCH_LINUX
