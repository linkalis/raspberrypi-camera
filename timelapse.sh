#!/bin/bash

echo -e 'Name your timelapse series:'
read FOLDER

echo -e 'Number of photos to take:'
read HOWMANY

echo -e 'Number of seconds:'
read HOWLONG

INTERVAL=$(($HOWLONG*1000/$HOWMANY))

mkdir -m 777 /var/www/photos/$FOLDER

echo 'Taking ' $HOWMANY ' photos in ' $HOWLONG ' seconds.'

sleep 5

echo 'Say cheese!'

raspistill -vf -hf -t $(($HOWLONG*1000)) -tl $INTERVAL -q 75 -o /var/www/photos/$FOLDER/image%04d.jpg