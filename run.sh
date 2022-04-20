#!/bin/sh -axe
dasm main.asm -otest.prg
x64sc -VICIIfilter 0 test.prg &
sleep 1.5
WINDOW=$(xdotool getactivewindow)
xdotool type --delay 200 --window "$WINDOW" 'sys 4096;'
sleep 0.2
xdotool keydown --window "$WINDOW" Return
sleep 0.2
xdotool keyup --window "$WINDOW" Return
