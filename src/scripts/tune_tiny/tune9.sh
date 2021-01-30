#!/bin/bash
CUDA_VISIBLE_DEVICES=0 python src/main.py -t -e --eval_type valid -c src/exp_configs/tune_tiny/ecgan1_contragan_lr8e-04_5e-05.json --seed 0 &
CUDA_VISIBLE_DEVICES=1 python src/main.py -t -e --eval_type valid -c src/exp_configs/tune_tiny/ecgan1_contragan_lr4e-04_5e-05.json --seed 0 &
CUDA_VISIBLE_DEVICES=2 python src/main.py -t -e --eval_type valid -c src/exp_configs/tune_tiny/ecgan1_contragan_lr2e-04_5e-05.json --seed 0 &
CUDA_VISIBLE_DEVICES=3 python src/main.py -t -e --eval_type valid -c src/exp_configs/tune_tiny/ecgan1_contragan_lr1e-04_5e-05.json --seed 0 &
wait