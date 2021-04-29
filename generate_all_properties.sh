#!/bin/bash

rm -r ./mnist-fc/vnnlib_properties/*
rm -r ./cifar-conv_2_255/vnnlib_properties/*
rm -r ./cifar-conv_8_255/vnnlib_properties/*

cd mnist-fc
python generate_properties.py --num_images 25 --epsilons '0.03 0.05'
cd ..

cd cifar-conv_2_255
python generate_properties.py --num_images 100 --epsilons '2/255'
cd ..

cd cifar-conv_8_255
python generate_properties.py --num_images 100 --epsilons '8/255'
cd ..