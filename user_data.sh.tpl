#!/bin/bash

# Install and start Nginx
sudo apt-get update -y
sudo apt-get install -y nginx
sudo systemctl enable nginx
sudo systemctl start nginx

# HTML page
echo "<h1>Chukwuebuka Okafor</h1><h2>HUG Lagos/Ibadan Terraform Challenge</h2>" > /var/www/html/index.html

sudo systemctl restart nginx


