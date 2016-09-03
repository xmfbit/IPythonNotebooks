#!/usr/bin/env sh
LOG=./log/`date +%Y-%m-%d-%H-%M-%S`.log
CAFFE='/home/xmf/BVLC_caffe/caffe/build/tools/caffe'
$CAFFE train --solver=./net/solver.prototxt --gpu=0 2>&1 | tee $LOG
