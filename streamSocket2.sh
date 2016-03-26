#!/bin/bash

DIR_STREAM=/home/omar/stream/split2
DIR_STREAM_SPLIT="/home/omar/datasets/split"
CNT=0
TIME=0.09
LOOP=1

##  use this frst:  nc -lk 9998 | nc -lk 9999

# echo "LOOP = $LOOP"
while [ -f $DIR_STREAM_SPLIT/$CNT ]; do
    cat $DIR_STREAM_SPLIT/$CNT | nc localhost 9998
    echo "Streamed file no. $CNT"
    let CNT=CNT+1
    sleep $TIME
    # if [ "$CNT" -eq 100 ]; then
    # 	CNT=0
    # 	let LOOP=LOOP+1
    # 	echo "LOOP = $LOOP"
    # fi
done

# echo "LOOP = $LOOP"
# while true 
# do
	# while read line; do
	#     echo $line | nc localhost 9998
	#     let CNT=CNT+1
	#     echo "Streamed $CNT lines"
	#     sleep $TIME
	    
	# done < $DIR_STREAM/streamMod

	# let LOOP=LOOP+1
	# echo "LOOP = $LOOP"
# done
    
