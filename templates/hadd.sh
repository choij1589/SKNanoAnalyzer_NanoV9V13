#!/bin/bash
export PATH="/opt/conda/bin:${PATH}"
export MAMBA_ROOT_PREFIX="/opt/conda"
eval "$(micromamba shell hook -s bash)"
micromamba activate Nano

cd [WORKDIR] || exit 1
hadd -f -j 8 [TARGET] output/hists_*.root || exit 1
rm output/hists_*.root
exit 0
