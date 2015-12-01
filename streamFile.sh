#!/bin/bash

DIR_STREAM=/home/omar/stream/split
DIR_TRAIN=/home/omar/stream/train
CNT=0
TIME=0.3

while [ -f /home/omar/stream/split/$CNT ]; do
    cp $DIR_STREAM/$CNT $DIR_TRAIN/$CNT
    echo "Streamed file no. $CNT"
    let CNT=CNT+1
    sleep $TIME
done
    
