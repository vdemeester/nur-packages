{ stdenv, lib, buildGoPackage, fetchFromGitHub }:

buildGoPackage rec {
  name = "ram-${version}";
  version = "0.1.2";
  rev = "v${version}";

  goPackagePath = "github.com/vdemeester/ram";

  src = fetchFromGitHub {
    inherit rev;
    owner = "vdemeester";
    repo = "ram";
    sha256 = "0vy57cy0mrp86wqzjsh3s4zl6iwrxa04gvj48ngbi5hhns9kqzif";
  };

  meta = {
  description = "A golang opiniated continuous testing tool 🐏";
    homepage = "https://github.com/vdemeester/ram";
    licence = lib.licenses.asl20;
  };
}
