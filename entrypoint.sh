#!/bin/bash

case "$1" in
--help) echo "docker run --rm am2h/nodejs:version SOURCE CMD [PARAMS...]"
       echo "SOURCE = source/source.js or source/package.json"
       echo "CMD = node, run, init";;
*) echo "Alles: $@";;
esac

if test -f "package.zip"; then
    echo "package.zip exist"
#    unzip package.zip
#    mv ./package.zip ./package.zip.bak
fi

# npm install --save
# npm start
