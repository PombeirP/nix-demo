# Run `nix-shell` and call `which wget`
# Run `nix-shell --pure` and
#   - call `which wget`
#   - call `which curl`
{ pkgs ? import <nixpkgs> { }
}:

builtins.derivation {
  name = "test";
  system = builtins.currentSystem;
  builder = ./builder.sh;
}