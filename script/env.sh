#!/bin/sh
export TSLIB_TSDEVICE=/dev/input/event1
export TSLIB_CALIBFILE=/etc/pointercal   
export TSLIB_CONFFILE=/etc/ts.conf    
export TSLIB_PLUGINDIR=/usr/lib/ts  
export TSLIB_FBDEVICE=/dev/fb0   

#竖屏
#export TSLIB_PARAMETERS=mode=1024x768:rotate=270
#对于单点触控，使用tslib ，对于多点，不用
export QT_QPA_FB_TSLIB=1 
#触控数据旋转 参数 ：invertx  inverty.
export QT_QPA_EVDEV_TOUCHSCREEN_PARAMETERS=rotate=270
export QT_QPA_FONTDIR=/usr/lib/fonts
export QWS_MOUSE_PROTO=tslib:/dev/input/event1
