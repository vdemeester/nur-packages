{ stdenv, lib, buildGoPackage, fetchFromGitHub }:

buildGoPackage rec {
  name = "ram-${version}";
  version = "0.1.1";
  rev = "v${version}";

  goPackagePath = "github.com/vdemeester/ram";

  src = fetchFromGitHub {
    inherit rev;
    owner = "vdemeester";
    repo = "ram";
    sha256 = "0hxnn20h180pp6qgk0ff57ldiajxf7inwx1m4p5zvbzba6jbyw2s";
  };

  meta = {
  description = "A golang opiniated continuous testing tool 🐏";
    homepage = "https://github.com/vdemeester/ram";
    licence = lib.licenses.asl20;
  };
}
