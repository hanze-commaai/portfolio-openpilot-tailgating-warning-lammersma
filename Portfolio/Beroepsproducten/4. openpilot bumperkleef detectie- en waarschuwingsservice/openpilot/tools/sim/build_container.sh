#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/../../

docker pull ghcr.io/jeroenlammersma/openpilot-base-cl:latest
docker build \
  --cache-from ghcr.io/jeroenlammersma/openpilot-sim:latest \
  -t ghcr.io/jeroenlammersma/openpilot-sim:latest \
  -f tools/sim/Dockerfile.sim .
