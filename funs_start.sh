#!/bin/bash

if [ ! -d "./funsvar/venv" ];then
    echo "Init Virtual Environment"
    virtualenv ./funsvar/venv
else
    echo "Virtual Environment Has Existed"
fi

source ./funsvar/venv/bin/activate
echo "Install Requirements"
pip3 install -r ./requirements.md

echo "Start Funs!"
