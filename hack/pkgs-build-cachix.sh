#!/usr/bin/env bash
set -e

channel=$(echo $CHANNEL | grep / | cut -d/ -f5- | sed -r 's/\./_/g')
nix-build --no-out-link . -A allTargets.$channel | cachix push shortbrain

