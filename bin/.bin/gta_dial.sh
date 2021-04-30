#!/bin/bash

export gta_window=$(xdotool search --name "WineDesktop" | head -n1)

press_key () {
xdotool keydown --window $gta_window $1
xdotool keyup --window $gta_window $1
sleep 0.5
}

press_key Up
press_key Up
press_key Right
press_key Return
press_key space

one () {
press_key Return
}

two () {
press_key Right
press_key Return
press_key Left
}

three () {
press_key Right
press_key Right
press_key Return
press_key Left
press_key Left
}


four () {
press_key Down
press_key Return
press_key Up
}

five () {
press_key Right
press_key Down
press_key Return
press_key Up
press_key Left
}

six () {
press_key Right
press_key Right
press_key Down
press_key Return
press_key Up
press_key Left
press_key Left
}

seven () {
press_key Down
press_key Down
press_key Return
press_key Up
press_key Up
}

eight () {
press_key Right
press_key Down
press_key Down
press_key Return
press_key Up
press_key Up
press_key Left
}

nine () {
press_key Right
press_key Right
press_key Down
press_key Down
press_key Return
press_key Up
press_key Up
press_key Left
press_key Left
}

zero () {
press_key Right
press_key Down
press_key Down
press_key Down
press_key Return
press_key Up
press_key Up
press_key Up
press_key Left
}

while read -n 1 digit ; do
    case $digit in
        0) zero ;;
        1) one ;;
        2) two ;;
        3) three ;;
        4) four ;;
        5) five ;;
        6) six ;;
        7) seven ;;
        8) eight ;;
        9) nine ;;
    esac	
done <<< "$1"
press_key space

#echo $1
