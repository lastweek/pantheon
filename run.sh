PEM_FILE=/home/ubuntu/aws-pem/cse222a-virginia.pem
src/experiments/test.py remote --all --run-times 3 -t 30 \
    ubuntu@44.192.83.123:/home/ubuntu/pantheon  \
    --pem $PEM_FILE  \
