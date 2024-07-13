# How can I initialize a .NET web app if I don't want to install SDK and Visual Studio on my laptop? All .NET stuff I want to run from within the docker and app initialization as well to run in docker.
1. Create Dockerfile (is already here)
2. Create docker-compose.yml (is already here)
3. Create `init_project.sh` (is already here)
4. Run `chmod +x init_project.sh`
5. Make sure the app name is state correctly in the Dockerfile `ENTRYPOINT ["dotnet", "jokes_app.dll"]`
6. Make sure in `app.csproj` the name of the app is as in Dockerfile `<AssemblyName>jokes_app</AssemblyName>`
7. Run the command `docker build -t jokes_app .`
8. Run the command `docker run -p 8080:80 jokes_app`

# How to start the application?
1. Run the command `docker build -t jokes_app .`
2. Run the command `docker run -p 8080:80 jokes_app`