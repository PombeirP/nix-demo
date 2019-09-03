# Run `nix-instantiate --strict --json --eval default.nix --arg greetIstanbul true -A message2 | jq`
{ greetIstanbul }:

rec {
  message = "Hello ${if greetIstanbul then "Istanbul" else "everyone"}";
  message2 = ''
    The message is:
    ${message}
  '';
}
