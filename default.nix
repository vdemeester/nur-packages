attrs@{ ... }:

let
  pkgs = import ./nix attrs;

in

pkgs.recurseIntoAttrs {
  inherit (pkgs)
    # mine
    ape
    fhs-std
    nr
    ram
    sec
    systemd-email
    yak
    # maybe upstream
    athens
    dobi
    dep-collector
    envbox
    esc
    go-containerregistry
    gogo-protobuf
    goreturns
    gorun
    knctl
    ko
    krew
    openshift-installer
    operator-sdk
    prm
    protobuild
    rmapi
    s2i
    slirp4netns
    tkn
    yaspell
    # upstream
    buildkit
    cni
    cni-plugins
    conmon
    containerd
    linuxkit
    minikube
    podman
    runc
    # all
    allTargets
  ;
}
