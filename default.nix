# Run `nix-instantiate --strict --json --eval default.nix | jq`

let
  greetee = "Istanbul";

in {
  message = "Hello ${greetee}";
}
