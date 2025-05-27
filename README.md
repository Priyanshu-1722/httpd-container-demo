# httpd-container-demo

This repository demonstrates deploying an Apache httpd container named **web5** on port 8000, running on an AWS Debian instance. It includes a custom `index.html` file copied into the container, illustrating how to update and serve web content dynamically without volume mounting.

## Prerequisites

- Debian-based AWS instance
- Docker installed and running

## Usage


1. Run the Apache httpd container: docker run -d --name web5 -p 8000:80 httpd:latest
2. Copy your local index.html into the container: docker cp index.html web5:/usr/local/apache2/htdocs/index.html
3. Access the webpage at: http://<your-ec2-public-ip>:8000/
4. To update the webpage, modify index.html locally and copy it again: docker cp index.html web5:/usr/local/apache2/htdocs/index.html
5. Refresh the browser to see changes.
