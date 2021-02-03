#!/bin/bash

for i in {0..3};
do
  CUDA_VISIBLE_DEVICES=$i python main.py -t -e -c exp_configs/CIFAR10/ecgan_cr10.json --seed $i &
  sleep 180
done

wait
