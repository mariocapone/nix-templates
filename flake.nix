{
  description = "A very basic flake";

  inputs = { nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable"; };

  outputs = { self, nixpkgs }: {
    templates = {
      rust = {
        path = ./rust;
        description = "Rust development environment";
      };
      go = {
        path = ./go;
        description = "Go development environment";
      };
    };
  };
}
