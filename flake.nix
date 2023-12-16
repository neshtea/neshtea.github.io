{
  description = "A dev environment for neshtea.github.io.";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, ... }@inputs:
    let supportedSystems = [ inputs.flake-utils.lib.system.aarch64-darwin ];
    in inputs.flake-utils.lib.eachSystem supportedSystems (system:
      let pkgs = import nixpkgs { inherit system; };
      in {

        devShells.default = pkgs.mkShell {
          buildInputs = [ pkgs.hugo pkgs.go pkgs.git pkgs.nodejs ];
        };

      });
}
