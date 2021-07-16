#!/usr/bin/env bash

set -e

if hash golangci-lint 2>/dev/null; then
  golangci-lint run --timeout 10m -E goimports --fix "$@"
else
  echo "golangci-lint not installed. Skipping golangci-lint." && exit 1
fi