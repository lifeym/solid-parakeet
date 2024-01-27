{ pkgs ? import <nixpkgs> { } }:
with pkgs;
mkShell {
  LD_LIBRARY_PATH = "${stdenv.cc.cc.lib}/lib";
  buildInputs = [
    hugo
    act
  ];
}
