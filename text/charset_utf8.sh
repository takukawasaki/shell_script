#!/bin/sh

outdir="newdir"

if [ ! -d "$outdir" ]
then
    echo "directory does not exists: $outdir" >&2
    exit 1
fi


for filename in *.html
do
    charset=$(grep -i '<meta ' "$filename"                                       |    \
                     sed -n 's/<meta .*charset="\([-_a-zA-Z0-9]*\)".*/\1/p')

    if [ -z "$charset" ]
    then
        echo "charset not found: $filename" >&2
        continue
    fi

    iconv -c -f "$charset" -t UTF-8 "$filename" > "${outdir}/${filename}"
done

