#!/bin/sh


cp largefile.tar.gz ${TMPDIR:=/tmp}
cd $TMPDIR

tar xzf largefile.tar.gz

echo "Extract files to $TEMPDIR"


