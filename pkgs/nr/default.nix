{ stdenv, lib, buildGoPackage, fetchFromGitHub }:

buildGoPackage rec {
  name = "nr-${version}";
  version = "0.2.0";
  rev = "v${version}";

  goPackagePath = "github.com/vdemeester/nr";

  src = fetchFromGitHub {
    inherit rev;
    owner = "vdemeester";
    repo = "nr";
    sha256 = "1px7yg9vl30n8nda2amgif366hl30bhgdyy7qiaihybwpbbr4h45";
  };

  meta = {
    description = "a nix run alias generator";
    homepage = "https://github.com/vdemeester/nr";
    license = lib.licenses.asl20;
  };
}
