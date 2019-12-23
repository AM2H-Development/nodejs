#!/bin/bash

case "$1" in
--help) echo "docker run -it --rm am2h/nodejs:version node | npm | SOURCE CMD [PARAMS]"
        echo "SOURCE = e.g. helloworld (source/source.js or source/package.json)"
        echo "CMD = node PARAMS, run (node SOURCE.js | npm install, npm start), init (npm init)";;
node)   node $2 $3;;
npm)    nmp $2 $3;;
*)      echo "Aufruf: $@";;
esac

case "$2" in
node)   cd "$1"
        node $1 $3;;
esac

# npm install --save
# npm start
