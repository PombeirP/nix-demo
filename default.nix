# Run
# - `nix-instantiate --strict --json --eval default.nix -A message | jq`
# - `nix-instantiate --strict --json --eval default.nix --argstr greetee audience -A message | jq`
# Add default argument value
{ greetee }:

{
  message = "Hello ${greetee}";
  message2 = "Message 2";
}
