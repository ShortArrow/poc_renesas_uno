#!/bin/bash

# show list
pwsh.exe -nop -c usbipd list

# select bus
echo 'Please enter BusID:'
read -r busid

# bind
if ! pwsh.exe -nop -c usbipd bind --busid "$busid"; then
  echo 'Bind failed, retring with sudo...'
  pwsh.exe -nop -c sudo usbipd bind --busid "$busid"
fi

# attach
pwsh.exe -nop -c usbipd attach --wsl --auto-attach --busid "$busid"
