# How can I initialize a .NET web app if I don't want to install SDK and Visual Studio on my laptop? All .NET stuff I want to run from within the docker and app initialization as well to run in docker.
1. Create Dockerfile (is already here)
2. Create docker-compose.yml (is already here)
3. Create `init_project.sh` (is already here)
4. Run `docker-compose exec app sh init_project.sh`
5. Make sure the app name is state correctly in the Dockerfile `ENTRYPOINT ["dotnet", "mywebapp.dll"]`
6. Make sure in `app.csproj` the name of the app is as in Dockerfile `<AssemblyName>mywebapp</AssemblyName>`
7. Run the command `docker-compose up --build`
8. Run the command `docker build -t mywebapp .`
9. Run the command `docker run -p 8080:80 mywebapp`

# How to start the application?
1. Run the command `docker-compose up --build`
2. Run the command `docker build -t mywebapp .`
3. Run the command `docker run -p 8080:80 mywebapp`