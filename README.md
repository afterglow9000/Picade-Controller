# Picade Controller

## Introduction

This work is the software portion of the Picade Controller.

## Procedure

1. Install Raspian

2. Picade-Hat Setup

```
git clone https://github.com/pimoroni/picade-hat

cd picade-hat

sudo ./install.sh

sudo nano /boot/config.txt

dtoverlay=picade
dtparam=up=17
dtparam=down=31
dtparam=left=30
dtparam=right=32
dtparam=button1=2
dtparam=button2=3
dtparam=button3=4
dtparam=button4=5
dtparam=button5=6
dtparam=button6=7
dtparam=enter=28
dtparam=escape=1
dtparam=coin=26
dtparam=start=27

sudo reboot
```

3. Bluetooth Setup 

```
cd BL_keyboard_RPI

sudo ./setup.sh

./boot.sh
```
