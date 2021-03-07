set -x
set -e

PEM_FILE=/home/ubuntu/aws-pem/cse222a-oregon.pem
IP=52.39.71.112
DATA_DIR=/home/ubuntu/pantheon/eval/frankfurt-oregon-1f

# PEM_FILE=/home/ubuntu/aws-pem/cse222a-frankfurt.pem
# IP=3.124.185.209
# DATA_DIR=/home/ubuntu/pantheon/eval/oregon-frankfurt-1f

# PEM_FILE=/home/ubuntu/aws-pem/cse222a-virginia.pem
# IP=44.192.83.123
# DATA_DIR=/home/ubuntu/pantheon/eval/frankfurt-virginia-1f

# 52.39.71.112 oregon
# 44.192.83.123 virginia
# 3.124.185.209 frankfurt

src/experiments/test.py remote --all --run-times 3 -t 30 \
    ubuntu@$IP:/home/ubuntu/pantheon  \
    --pem $PEM_FILE  \
    --data-dir $DATA_DIR

src/analysis/analyze.py --data-dir $DATA_DIR

git add $DATA_DIR
git commit -m "Add $DATA_DIR"
git push
