let
  nixpkgs =
    import (builtins.fetchTarball {
      url = https://github.com/NixOS/nixpkgs/archive/e6e6bad81b7e11f37d893ef39712ce8918ae2338.tar.gz;
    }) { };
in
nixpkgs.mkShell {
  buildInputs = [
    nixpkgs.ruby_3_1
  ];
}
