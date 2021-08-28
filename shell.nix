let
 pkgs = import <nixpkgs> {};
in
pkgs.stdenv.mkDerivation {
 name = "shell";
 buildInputs = [
  pkgs.nodejs-14_x
 ];

 shellHook = ''
  export PATH=$( npm bin ):$PATH
  # keep it fresh
  npm install
 '';
}