#!/bin/bash

# Debian and derivatives (apt)
if cat /etc/os-release | grep -E 'ID=debian|ID_LIKE=(.*)debian' &> /dev/null; then
    supported=true

    echo "Installing packages for Debian or derivative (apt)"

    # Add i386 arch for wine32
    sudo apt -y install python3-pip
    sudo apt-get install -y gcc-mips-linux-gnu
    sudo apt-get install libc6-dev-i386 #fixes dependency problem with vscode and include paths
    pip install pylibyaml
    pip install capstone
    pip3 install -r tools/splat/requirements.txt
fi