# Run `nix-shell --pure` and
#   - call `which bash`
#   - call `printenv | grep MY_`
#   - call `printenv | grep NIX_`
{ pkgs ? import <nixpkgs> { }
}:

pkgs.mkShell {
  buildInputs = with pkgs; [ curl which ];
  shellHook = ''
    export MY_ENVVAR1=${pkgs.curl}

    echo "Welcome to the Nix shell!"
  '';
  MY_ENVVAR2="ENVVAR2";
}