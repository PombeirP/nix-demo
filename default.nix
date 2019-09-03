# Run `nix-instantiate --strict --json --eval default.nix | jq`
let
  aBoolean = true;
  aPath = ./default.nix;
  aNull = null;
  anInteger = 123;
  aFloatingPointNumber = 123.456;
  aUrl = https://status.im;
  aList = [ aBoolean aPath aNull ];
  aSet = { # Sets are really the core of the language, since ultimately the Nix language is all about creating derivations,
           # which are really just sets of attributes to be passed to build scripts.
    aNull = aNull;
    inherit aPath; # Same as aPath = aPath
    aFunction = aFunction aList;
  };
  aFunction = arg: builtins.head arg;

in aSet
