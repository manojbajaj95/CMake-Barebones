#!/usr/bin/env bash

export ProjectRoot=$(pwd)
export BuildDir=$ProjectRoot/cmake_build

if [[ -d "$BuildDir" ]]; then
    # Control will enter here if $DIRECTORY exists.
    rm -rf $BuildDir
fi

mkdir -p $BuildDir
cd $BuildDir
cmake .. -G Ninja
ninja
