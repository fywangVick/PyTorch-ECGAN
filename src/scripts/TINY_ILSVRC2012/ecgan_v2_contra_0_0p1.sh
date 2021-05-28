#!/bin/bash

for i in {0..3};
do
  CUDA_VISIBLE_DEVICES=$i python src/main.py -t -e --eval_type valid -c src/exp_configs/TINY_ILSVRC2012/ecgan_v2_contra_0_0p1.json --seed $i &
  sleep 180
done

wait
