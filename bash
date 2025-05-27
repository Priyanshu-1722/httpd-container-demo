sudo apt update
sudo apt install -y docker.io
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker $USER
# Log out and log in again or run:
newgrp docker

# Run container
docker run -d --name web5 -p 8000:80 httpd:latest

# Copy index.html to container
docker cp index.html web5:/usr/local/apache2/htdocs/index.html

# Modify index.html as needed locally and copy again to update page
docker cp index.html web5:/usr/local/apache2/htdocs/index.html
