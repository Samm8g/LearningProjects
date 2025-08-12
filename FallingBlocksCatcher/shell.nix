{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  buildInputs = with pkgs; [
    lua
    love
  ];

  shellHook = ''
    love .
  '';
}
