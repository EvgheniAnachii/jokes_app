#!/bin/sh
docker run --rm -v ${PWD}:/app -w /app mcr.microsoft.com/dotnet/sdk:6.0 dotnet new webapp -n MyWebApp -o .
