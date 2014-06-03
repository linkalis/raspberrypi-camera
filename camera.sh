#!/bin/bash

DATE=$(date +'%Y-%m-%d_%H%M')

echo -e 'Choose an effect [none, negative, solarise, whiteboard, blackboard, sketch, denoise, emboss, oilpaint, hatch, gpen, pastel, watercolour, film, blur, saturation]:'
read EFFECT

echo 'Say cheese!'

raspistill -vf -hf -o /var/www/photos/$DATE.jpg -ifx $EFFECT -q 80