#!/bin/bash

# name of the output file
TARGET=pipe.stl
INLET=inlet.stl
OUTLET1=outlet1.stl
OUTLET2=outlet2.stl
WALLS=walls.stl

[ -f $TARGET ] && rm $TARGET

touch $TARGET

sed -i '1 s/^.*$/solid inlet/' $INLET
cat $INLET >> $TARGET

sed -i '1 s/^.*$/solid outlet1/' $OUTLET1
cat $OUTLET1 >> $TARGET

sed -i '1 s/^.*$/solid outlet2/' $OUTLET2
cat $OUTLET2 >> $TARGET

sed -i '1 s/^.*$/solid walls/' $WALLS
cat $WALLS >> $TARGET


