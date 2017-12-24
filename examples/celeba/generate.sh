#!/bin/bash
source ../../export_pycaffe.sh
echo "PYTHONPATH: $PYTHONPATH"
python generate.py generator.prototxt snapshots_test/2000/generator.caffemodel
