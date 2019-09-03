# Run `nix-shell` and call `which wget`
# Run `nix-shell --pure` and
#   - call `which wget`
#   - call `which curl`
{ pkgs ? import <nixpkgs> { }
}:

pkgs.mkShell {
  buildInputs = with pkgs; [ curl which ];
}