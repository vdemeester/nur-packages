#!/usr/bin/env bash
set -e

function build-and-push() {
    nix-channel --list
    nix-channel --update
    ./pkgs-build-cachix.sh
}

build_and_push

nix-channel --add nixpkgs https://nixos.org/channels/nixos-18.09

build_and_push
