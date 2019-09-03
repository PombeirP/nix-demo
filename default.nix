# Run `nix-instantiate --strict --json --eval default.nix --argstr greetee audience -A message2 | jq`
{ greetee }:

rec {
  message = "Hello ${greetee}";
  message2 = "The message is '${message}'";
}
