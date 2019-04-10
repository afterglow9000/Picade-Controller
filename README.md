# Arcade Controller

## Parts

- Pimoroni Picade Console
- Raspberry Pi 3 B+
- Power supply
- 8GB microSD card
- Ethernet cable

## Procedure

### Step 1: Install Raspian


### Step 2: Picade-Hat Setup

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

### Step 3: Bluetooth Setup 

```
cd BL_keyboard_RPI

sudo ./setup.sh

./boot.sh
```

## References

[1] https://shop.pimoroni.com/products/picade-console

[2] https://mlabviet2016.blogspot.com/2017/09/make-raspberry-pi3-as-emulator.html

[3] https://github.com/mlabviet/BL_keyboard_RPI

[4] https://impythonist.wordpress.com/2014/02/01/emulate-a-bluetooth-keyboard-with-the-raspberry-pi/

[5] http://yetanotherpointlesstechblog.blogspot.com

[6] https://github.com/pimoroni/picade-hat

[6] https://github.com/torvalds/linux/blob/master/include/uapi/linux/input-event-codes.h
