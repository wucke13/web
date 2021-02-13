{ pkgs ? import <nixpkgs> { } }:

with pkgs;

stdenv.mkDerivation {
  name = "wucke13.de-hugo";
  src = ./.;
  nativeBuildInputs = [ hugo ];
  buildPhase = "rm -r public; hugo";
  installPhase = "mv public $out";
}
