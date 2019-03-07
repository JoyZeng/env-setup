#!/bin/bash
# Install zsh and oh-my-zsh

sudo apt update
sudo apt install zsh
sudo usermod -s /usr/bin/zsh $(whoami)
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
