#!/bin/sh

mkdir -p new

for f in *.jpg
do
# extract the size of the image
SIZE=$(identify "$f" | awk '{print $3}')

case $SIZE in 

423x564|480x640|1200x1600|1920x2560|756x1008|3024x4032)
# portrait --do nothing
convert -rotate 270 $f new/$f 
NEWSIZE=$(identify new/"$f" | awk '{print $3}')
echo $SIZE '->'$NEWSIZE': '$f
;;

*)
# landscape -- rotate file
echo $SIZE ': '$f
cp "$f" new

esac

done

