#!/bin/bash
for app in blur local_laplacian interpolate bilateral_grid camera_pipe cost_function_test overlap_test; do
    cd $app;
    make clean; make bench_ref; make bench_auto;
    cd ../;
done
python benchmark.py