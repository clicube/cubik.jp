#! /bin/bash -f
SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd $SCRIPT_DIR

python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
mkdir out
pyftsubset PixelMplus10-Regular.ttf --output-file=out/PixelMplus10-Regular_optimized.woff2 --flavor=woff2 --desubroutinize --text-file=../..//public/index.html