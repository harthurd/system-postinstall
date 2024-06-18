#!/bin/bash

# Install software
apt update && apt upgrade -y
apt install -y git mc htop wget curl pass vim aria2 libnotify-bin
