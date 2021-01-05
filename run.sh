#!/bin/sh
export SINGULARITY_CACHEDIR="/tmp"
singularity shell \
    --shell /bin/zsh \
    --bind "$(pwd)/Sprint":/opt/linkage/home,/tmp:/tmp \
    --contain --no-home \
    --writable \
    --pwd /opt/linkage/home \
    -H /opt/linkage/home \
    sprint00.sif
