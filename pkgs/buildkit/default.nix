{ stdenv, fetchFromGitHub, buildGoPackage }:

buildGoPackage rec {
  pname = "buildkit";
  version = "0.3.3";
  rev = "v${version}";

  goPackagePath = "github.com/moby/buildkit";
  subPackages = [ "cmd/buildctl" ] ++ stdenv.lib.optionals stdenv.isLinux [ "cmd/buildkitd" ];

  src = fetchFromGitHub {
    inherit rev;
    owner = "moby";
    repo = "buildkit";
    sha256 = "06d79k6s19fsv80fp9wprxxr1yrgzwyfhb7ccwgk4dbs5iaghd68";
  };

  meta = with stdenv.lib; {
    description = "Concurrent, cache-efficient, and Dockerfile-agnostic builder toolkit";
    homepage = https://github.com/moby/buildkit;
    license = licenses.asl20;
    maintainers = with maintainers; [ vdemeester ];
  };
}
