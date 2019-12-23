#!/bin/bash

if test -f "package.zip"; then
    echo "package.zip exist"
    unzip package.zip
    mv ./package.zip ./package.zip.bak
fi

npm install --save
npm start
