#!/bin/sh
rm build/ -rf
mkdir build
cd build
em++ ../src/hello.cpp ../src/fib.cpp -s WASM=1 -s STANDALONE_WASM -s EXPORT_ALL=1 -O3  -o hello.js || exit 1
mv hello.js ../web/gen/
mv hello.wasm ../web/gen/
