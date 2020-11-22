#!/bin/bash

# bash train.sh

# RNN
# python simple-ntc/train.py --model_fn ./models/rnn_model.pth \
#     --train ./data/dialog/category_corpus.txt.shuf.train \
#     --valid ./data/dialog/category_corpus.txt.shuf.valid \
#     --rnn --gpu_id -1

# CNN
# python simple-ntc/train.py --model_fn ./models/cnn_model.pth \
#     --train ./data/dialog/category_corpus.txt.shuf.train \
#     --valid ./data/dialog/category_corpus.txt.shuf.valid \
#     --cnn --gpu_id -1

# RNN&CNN ensemble
python simple-ntc/train.py --model_fn ./models/ensemble_model.pth \
    --train ./data/dialog/category_corpus.txt.shuf.train \
    --valid ./data/dialog/category_corpus.txt.shuf.valid \
    --rnn --cnn --gpu_id -1

