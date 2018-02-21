#!/bin/bash

startx &
# Wait for X to start...
sleep 5
DISPLAY=:0 iceweasel https://resin.io/
