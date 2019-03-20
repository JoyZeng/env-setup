#!/bin/bash
sudo apt update
sudo apt install mysql-server -y
sudo mysql_secure_installation
