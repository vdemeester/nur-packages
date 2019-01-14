#!/usr/bin/env bash
set -e

function build_and_push {
    nix-channel --list
    nix-channel --update
    $(dirname $0)/pkgs-build-cachix.sh
}

build_and_push

nix-channel --add nixpkgs https://nixos.org/channels/nixos-18.09

build_and_push
