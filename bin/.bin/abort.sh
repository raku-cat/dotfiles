#!/bin/bash

MON[0]="DVI-I-1"
MON[1]="HDMI-0"

for disp in "${!MON[@]}"
do
    ws_list=$( i3-msg -t get_workspaces | jq ".[] | select(.output == \"${MON[$disp]}\").num" )
    MON_WS[$disp]=$ws_list
    ws_vis=$( i3-msg -t get_workspaces | jq ".[] | select((.output == \"${MON[$disp]}\") and .visible == true).num" )
    MON_VIS[$disp]=$ws_vis
done

for sw in ${!MON_VIS[@]}
do
    for ws in ${MON_WS[$sw]}
    do
        if (( $ws < ${MON_VIS[$sw]} )); then
            i3-msg workspace $ws &
            break
        fi
    done
done

#for sw in ${MON_VIS[@]}
#do
#    echo $sw
#    i3-msg workspace $sw
#    i3-msg workspace prev_on_output
#done