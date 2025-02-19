#!/bin/sh

# generate a random flag (idk if we care about this)
R=$(echo $RANDOM | sha256sum | head -c 64) && \
    F="hidden{$R}" && \
    echo $F > /home/ctf/flag && \
    echo $F >&2

# run the task as the <ctf> user 
socat tcp-listen:9999,fork,reuseaddr exec:"su ctf -c '/home/ctf/task'",stderr
# people usually put this here to not kill the container I think??
sleep infinity;
