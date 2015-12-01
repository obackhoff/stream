#!/bin/bash

DIR_STREAM=/home/omar/stream/split100
DIR_TRAIN=/home/omar/stream/train
CNT=0
TIME=0.1
LOOP=1

##  use this frst:  nc -lk 9998 | nc -lk 9999

echo "LOOP = $LOOP"
while [ -f $DIR_STREAM/$CNT ]; do
    cat $DIR_STREAM/$CNT | nc 10.155.208.74 9998
    echo "Streamed file no. $CNT"
    let CNT=CNT+1
    sleep $TIME
    if [ "$CNT" -eq 100 ]; then
    	CNT=0
    	let LOOP=LOOP+1
    	echo "LOOP = $LOOP"
    fi
done

    
