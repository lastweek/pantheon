PEM_FILE=/home/ubuntu/aws-pem/cse222a-oregon.pem

src/experiments/test.py remote --all --run-times 3 -t 30 \
    ubuntu@52.39.71.112:/home/ubuntu/pantheon  \
    --pem $PEM_FILE 
