set -x
set -e

PEM_FILE=/home/ubuntu/aws-pem/cse222a-frankfurt.pem
DATA_DIR=/home/ubuntu/pantheon/eval/virginia-frankfurt-1f

# 52.39.71.112 oregon
# 3.124.185.209 frankfurt

src/experiments/test.py remote --all --run-times 3 -t 30 \
    ubuntu@3.124.185.209:/home/ubuntu/pantheon  \
    --pem $PEM_FILE  \
    --data-dir $DATA_DIR

src/analysis/analyze.py --data-dir $DATA_DIR

git add $DATA_DIR
git commit -m "Add $DATA_DIR"
