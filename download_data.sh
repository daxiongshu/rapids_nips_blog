#!/bin/bash

function aws_s3 {
  CMD="$1"
  SOURCE="$2"
  DEST="$3"
  # use aws cli if installed
  if command -v aws &> /dev/null; then
    aws s3 "$CMD" --no-sign-request "$SOURCE" "$DEST"
  # else use aws docker container instead
  else
    docker run \
      --user $(id -u):$(id -g) \
      --rm -it \
      -v $(pwd)/output:/output \
      -w / \
      amazon/aws-cli \
      s3 "$CMD" --no-sign-request "$SOURCE" "$DEST"
  fi
}

aws_s3 sync "s3://openproblems-bio/public/phase2-private-data/" "/raid/data/ml/nips/datasets"
