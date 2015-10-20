#!/bin/sh

outdir="newdir"

if [ ! -d "$outdir" ]
then
    echo "directory does not exists: $outdir" >&2
fi


for htmlfile in *.html
do
    sed "s%/img/%/images/%g" "$htmlfile" > "${outdir}/${htmlfile}"
done

