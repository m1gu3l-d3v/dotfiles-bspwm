# Install Docker
sudo apt install docker.io
# Add the current user to the docker group
sudo usermod -aG docker $USER

# Comands:
# List running containers
docker ps
# Pull the SQL Server image from Microsoft's repository
docker pull mcr.microsoft.com/mssql/server
# Create and run a SQL Server container with specific configuration
#docker run -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=typePassword" -p 1433:1433 --name typeDatabaseName -d mcr.microsoft.com/mssql/server:2022-latest
# Stop a running container
#docker stop DatabaseName
# Remove a stopped container
#docker rm DatabaseName
