#!/bin/bash

set -e

export DOTNET_CLI_TELEMETRY_OPTOUT='true'
export DOTNET_NOLOGO='true'
export DOTNET_CLI_WORKLOAD_UPDATE_NOTIFY_DISABLE='true'

projFile="/home/${USER}/source/XIVLauncher.Core/src/XIVLauncher.Core/XIVLauncher.Core.csproj"
outputDir="/home/${USER}/Games/XIVLauncher-local/"

rm --recursive --force "${outputDir}"*

dotnet publish "${projFile}" \
  --runtime linux-x64 --configuration Release \
  --self-contained false \
  --output "${outputDir}" \
  --property:DefineConstants='"WINE_XIV_ARCH_LINUX;LINUX"'

echo "Done!"
