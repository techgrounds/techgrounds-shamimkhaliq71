#!/bin/bash
#Setting up Apache Web server

sudo su
apt update
apt install apache2 -y
ufw allow 'Apache'
systemctl enable apache2
systemctl restart apache2

# Check the status of Apache service
sudo systemctl status apache2