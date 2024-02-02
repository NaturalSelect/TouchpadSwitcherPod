#!/bin/bash

function getTouchpadId() {
    xinput list | grep -i Touchpad | awk -F= '{print $2}' | awk '{print $1}'
}

function foundMouse() {
    lsusb | grep -i Mouse | wc -l
}

function main() {
    while [ 1 ]
    do
        touchpadId=`getTouchpadId`
        hasTouchpad=`echo ${touchpadId} | wc -l`
        if test ${hasTouchpad} -eq 0
        then
            echo "Touchpad not found"
            continue
        fi
        hasMouse=`foundMouse`
        if test ${hasMouse} -eq 1
        then
            xinput disable ${touchpadId}
        else
            xinput enable ${touchpadId}
        fi
        sleep 1s
    done
}

main $@
