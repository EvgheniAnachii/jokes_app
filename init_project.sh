#!/bin/sh
docker run --rm -v ${PWD}:/app -w /app mcr.microsoft.com/dotnet/sdk:8.0 dotnet new mvc -n jokes_app --auth Individual -o .
