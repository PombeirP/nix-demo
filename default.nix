# Run `nix-instantiate --strict --json --eval default.nix -A message2 | jq`
let
  greetee = "Istanbul";

in {
  message = "Hello ${greetee}";
  message2 = "Message 2";
}
