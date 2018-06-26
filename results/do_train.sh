#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

module use /opt/insy/modulefiles
module load cuda/9.0

echo "Using GPU"
. $DIR/environment/gpu/bin/activate

export LD_LIBRARY_PATH=~/lib/cuda/lib64:$LD_LIBRARY_PATH

python tensorflow/models/research/object_detection/Train.py
