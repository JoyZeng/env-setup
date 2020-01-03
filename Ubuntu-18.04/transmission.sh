#!/bin/bash

# Add latest source
sudo apt update
sudo apt install software-properties-common -y
sudo add-apt-repository ppa:transmissionbt/ppa
sudo apt update
sudo apt install transmission-daemon -y

sudo service transmission-daemon stop

# Prepare directory
sudo mkdir /home/transmission
sudo mkdir /home/transmission/download
sudo mkdir /home/transmission/temp
sudo chmod -R 777 /home/transmission


sudo cat > /etc/transmission-daemon/settings.json << EOF
{
    "alt-speed-down": 50,
    "alt-speed-enabled": false,
    "alt-speed-time-begin": 540,
    "alt-speed-time-day": 127,
    "alt-speed-time-enabled": false,
    "alt-speed-time-end": 1020,
    "alt-speed-up": 50,
    "bind-address-ipv4": "0.0.0.0",
    "bind-address-ipv6": "::",
    "blocklist-enabled": false,
    "blocklist-url": "http://www.example.com/blocklist",
    "cache-size-mb": 4,
    "dht-enabled": false,
    "download-dir": "/home/transmission/download",
    "download-limit": 100,
    "download-limit-enabled": 0,
    "download-queue-enabled": false,
    "download-queue-size": 5,
    "encryption": 2,
    "idle-seeding-limit": 30,
    "idle-seeding-limit-enabled": false,
    "incomplete-dir": "/home/transmission/temp",
    "incomplete-dir-enabled": true,
    "lpd-enabled": true,
    "max-peers-global": 10000,
    "message-level": 1,
    "peer-congestion-algorithm": "",
    "peer-id-ttl-hours": 6,
    "peer-limit-global": 10000,
    "peer-limit-per-torrent": 200,
    "peer-port": 51415,
    "peer-port-random-high": 65535,
    "peer-port-random-low": 49152,
    "peer-port-random-on-start": false,
    "peer-socket-tos": "default",
    "pex-enabled": true,
    "port-forwarding-enabled": true,
    "preallocation": 1,
    "prefetch-enabled": true,
    "queue-stalled-enabled": false,
    "queue-stalled-minutes": 30,
    "ratio-limit": 30,
    "ratio-limit-enabled": true,
    "rename-partial-files": true,
    "rpc-authentication-required": true,
    "rpc-bind-address": "0.0.0.0",
    "rpc-enabled": true,
    "rpc-host-whitelist": "",
    "rpc-host-whitelist-enabled": false,
    "rpc-password": "transmission",
    "rpc-port": 9091,
    "rpc-url": "/transmission/",
    "rpc-username": "transmission",
    "rpc-whitelist": "127.0.0.1",
    "rpc-whitelist-enabled": false,
    "scrape-paused-torrents-enabled": true,
    "script-torrent-done-enabled": false,
    "script-torrent-done-filename": "",
    "seed-queue-enabled": false,
    "seed-queue-size": 10,
    "speed-limit-down": 100,
    "speed-limit-down-enabled": false,
    "speed-limit-up": 100,
    "speed-limit-up-enabled": false,
    "start-added-torrents": true,
    "trash-original-torrent-files": false,
    "umask": 18,
    "upload-limit": 100,
    "upload-limit-enabled": 0,
    "upload-slots-per-torrent": 14,
    "utp-enabled": true
}
EOF


sudo service transmission-daemon start

# TWC
sudo wget https://github.com/ronggang/transmission-web-control/raw/master/release/install-tr-control-cn.sh
sudo chmod +x install-tr-control-cn.sh
sudo bash install-tr-control-cn.sh

sudo rm install-tr-control-cn.sh