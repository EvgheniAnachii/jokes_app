# Use the official Microsoft .NET SDK image as a parent image
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build-env

# Set the working directory to /app
WORKDIR /app

# Copy everything into the container
COPY . ./

# Restore .NET dependencies
RUN dotnet restore jokes_app.csproj && dotnet build -c Release -o out 


# Build the application
RUN dotnet build -c Release -o out

# Use the runtime image
FROM mcr.microsoft.com/dotnet/aspnet:8.0

# Set the working directory to /app
WORKDIR /app

# Copy the build output from the build-env
COPY --from=build-env /app/out .

# Expose the port
EXPOSE 80

# Define entry point for the application
ENTRYPOINT ["dotnet", "jokes_app.dll"]
