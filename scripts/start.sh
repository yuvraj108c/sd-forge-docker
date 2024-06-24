#!/bin/bash

cd /workspace/stable-diffusion-webui-forge

source venv/bin/activate

exec /usr/sbin/sshd -D & 

nohup jupyter-lab --allow-root --ip  0.0.0.0 --NotebookApp.token='' --notebook-dir ./ --NotebookApp.allow_origin=* --NotebookApp.allow_remote_access=1 &

python launch.py --listen --opt-sdp-attention