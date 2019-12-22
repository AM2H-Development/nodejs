#!/bin/bash

if test -f "package.zip"; then

    echo "package.zip exist"
    unzip package.zip
    mv ./package.zip ./package.zip.bak
    npm install --save

fi

npm start
