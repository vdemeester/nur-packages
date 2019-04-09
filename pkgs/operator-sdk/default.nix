{ stdenv, lib, buildGoPackage, fetchFromGitHub }:

buildGoPackage rec {
  name = "operator-sdk-${version}";
  version = "0.7.0";
  rev = "v${version}";

  goPackagePath = "github.com/operator-framework/operator-sdk";

  subPackages = [ "cmd/operator-sdk" ];

  src = fetchFromGitHub {
    inherit rev;
    owner = "operator-framework";
    repo = "operator-sdk";
    sha256 = "0fg595l5679lgavvifzrw07c2b5v71qby2ywiwqa4svi9rnrw111";
  };

  meta = {
    description = "Install an OpenShift cluster";
    homepage = https://github.com/openshift/installer;
    license = lib.licenses.asl20;
  };
}
