#!/bin/bash
VIDEO=$1
OUTPUT=$2

echo "FFMPEG -> WHATSAPP by Sérgio Cardoso <contato@sergiocardoso.org>"
echo "version 0.0.1 --------------------------------------------------"

if [[ -z "$1" ]]
  then
    echo "ERROR - Please set the name of file to enconding -------------"
    echo "END WITHOUT SUCCESS! -----------------------------------------"
    exit 1
fi

if [[ -z "$2" ]]
  then
    echo "ERROR - Please set the name to output file -----------------"
    echo "END WITHOUT SUCCESS! ----------------------------------------"
    exit 1
fi

if [ -f "$file" ]
then
    echo "encoding, please waiting. --------------------------------------"
    ffmpeg -i $1 -c:v libx264 -profile:v baseline -level 3.0 -pix_fmt yuv420p -loglevel panic -s 640x360 $2
    echo "FINISH - File: $2 is ready! Thank you. -------------------------"
else
    echo "ERROR - File not found! ----------------------------------------"
    echo "END WITHOUT SUCCESS! -------------------------------------------"
    exit 1
fi