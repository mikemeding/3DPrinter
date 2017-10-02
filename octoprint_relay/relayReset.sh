#!/bin/bash
echo "setting up input switch pins and pullup resistors"
# put all switch pins into input mode and set pullup resistor
gpio mode 1 in
gpio mode 1 up
gpio mode 5 in
gpio mode 5 up
gpio mode 26 in
gpio mode 26 up
gpio mode 27 in
gpio mode 27 up

echo "resetting all relays to off status"
# put all relay pins into output mode
gpio mode 7 out
gpio mode 3 out
gpio mode 22 out
gpio mode 25 out
# turn them all off
gpio write 7 0
gpio write 3 0
gpio write 22 0
gpio write 25 0
