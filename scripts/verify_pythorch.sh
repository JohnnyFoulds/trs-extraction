#!/bin/bash

python -c "import sys; print(f'Python Version: {sys.version}'); import torch; print(f'Torch Version: {torch.__version__}'); print(f'CUDA available? {torch.cuda.is_available()}'); print(f'GPU Name: {torch.cuda.get_device_name(0)}'); print(f'GPU Memroy: {round(torch.cuda.get_device_properties(0).total_memory  / 1024 / 1024 / 1024)} GB')"