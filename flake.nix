{
  inputs = {
    nixpkgs.url = "https://flakehub.com/f/NixOS/nixpkgs/*";
  };

  outputs = { self, nixpkgs }: 
    let
      pkgs = import nixpkgs { system = "aarch64-darwin"; };
    in {
      packages.aarch64-darwin = {
        default = pkgs.writeTextFile {
          name = "readme";
          executable = true;
          destination = "/bin/readme";
          text = ''
#!${pkgs.stdenv.shell}
cat README.md
          '';
       };
    };
  };
}

