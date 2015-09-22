#!/bin/bash
EXM="example.conf"
OLD_ROOT="uri"
OLD_HOST="{{host}}"
echo Ingrese HOST
read NAME
echo Ingrese URI
read ROOT
TFILE="$NAME.conf"
touch $TFILE
sed -e s/$OLD_ROOT/$ROOT/g -e s/$OLD_HOST/$NAME/g < "$EXM" > "$TFILE"