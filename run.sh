#! /bin/bash

cp compile.sh ./src/$1/
cd ./src/$1/
bash compile.sh $2