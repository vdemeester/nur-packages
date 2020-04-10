{ stdenv, lib, buildGoModule, git, fetchFromGitHub }:

buildGoModule rec {
  pname = "operator-sdk";
  version = "0.16.0";
  name = "${pname}-${version}";
  rev = "v${version}";

  builtInputs = [ "git" ];

  goPackagePath = "github.com/operator-framework/operator-sdk";
  subPackages = [ "cmd/operator-sdk" ];
  buildFlagsArray = let t = "${goPackagePath}/version"; in ''
    -ldflags=
      -X ${t}.GitVersion=${version}
      -X ${t}.KubernetesVersion=v1.17.2
  '';

  src = fetchFromGitHub {
    inherit rev;
    owner = "operator-framework";
    repo = "operator-sdk";
    sha256 = "1qdvnfxz81ij1y7qdk5xjq0nd3dqgbdjq0gmramxmkkz892cdaf3";
  };
  modSha256 = "11nz0fdxpsc9ifszprgp1l70myhadh90hcs94cilrpqwlci0i8c5";

  postInstall = ''
    # completions
    mkdir -p $out/share/bash-completion/completions/
    $out/bin/operator-sdk completion bash > $out/share/bash-completion/completions/operator-sdk
    mkdir -p $out/share/zsh/site-functions/
    $out/bin/operator-sdk completion zsh > $out/share/zsh/site-functions/_operator-sdk
  '';

  meta = {
    description = "SDK for building Kubernetes applications. Provides high level APIs, useful abstractions, and project scaffolding";
    homepage = https://github.com/operator-framework/operator-sdk;
    license = lib.licenses.asl20;
  };
}
