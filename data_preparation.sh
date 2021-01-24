#!/bin/bash

# bash data_preparation.sh data/dialog/Category_corpus.txt

python parsing.py

cat $1 | shuf > $1.shuf

NUMLINES=$(cat $1.shuf | wc -l)
echo 'corpus lines:' $NUMLINES

# split train&valid
VALID_NUM=$(($NUMLINES / 10))
TRAIN_NUM=$(($NUMLINES - $VALID_NUM))
echo 'valild lines:' $VALID_NUM
echo 'train lines:' $TRAIN_NUM


head -n $VALID_NUM $1.shuf > $1.shuf.valid
tail -n $TRAIN_NUM $1.shuf > $1.shuf.train

