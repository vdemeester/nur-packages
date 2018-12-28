{ pkgs ? import <nixpkgs> {} }:

rec {
  # Min
  ape = pkgs.callPackage ./pkgs/ape {};
  ram = pkgs.callPackage ./pkgs/ram {};
  sec = pkgs.callPackage ./pkgs/sec {};
  systemd-email = pkgs.callPackage ./pkgs/systemd-email {};
  yak = pkgs.callPackage ./pkgs/yak {};

  # Maybe upstream
  athens = pkgs.callPackage ./pkgs/athens {};
  dobi = pkgs.callPackage ./pkgs/dobi {};
  dep-collector = pkgs.callPackage ./pkgs/dep-collector {};
  envbox = pkgs.callPackage ./pkgs/envbox {};
  go-containerregistry = pkgs.callPackage ./pkgs/go-containerregistry {};
  gogo-protobuf = pkgs.callPackage ./pkgs/gogo-protobuf {};
  knctl = pkgs.callPackage ./pkgs/knctl {};
  krew = pkgs.callPackage ./pkgs/krew {};
  prm = pkgs.callPackage ./pkgs/prm {};
  protobuild = pkgs.callPackage ./pkgs/protobuild {};
  s2i = pkgs.callPackage ./pkgs/s2i {};
  slirp4netns = pkgs.callPackage ./pkgs/slirp4netns {};
  stellar = pkgs.callPackage ./pkgs/stellar {};
  # Upstream
  buildkit = pkgs.callPackage ./pkgs/buildkit {};
  cni = pkgs.callPackage ./pkgs/cni {};
  cni-plugins = pkgs.callPackage ./pkgs/cni/plugins.nix {};
  conmon = pkgs.callPackage ./pkgs/podman/conmon.nix {};
  containerd = pkgs.callPackage ./pkgs/containerd {};
  linuxkit = pkgs.callPackage ./pkgs/linuxkit {};
  podman = pkgs.callPackage ./pkgs/podman {};
  runc = pkgs.callPackage ./pkgs/runc {};
}
