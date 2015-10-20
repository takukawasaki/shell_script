#!/bin/sh

outdir="newdir"

if [ ! -d "$outdir" ]
then
    echo "directory does not exists: $outdir" >&2
    exit 1
    
fi


for file in *.js
do
    sed '/^[[:blank:]]*$/d' "$file" > "${outdir}/${file}"

done


