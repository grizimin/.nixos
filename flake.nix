{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    hyprpanel.url = "github:Jas-SinghFSU/HyprPanel";

    nur.url = "github:nix-community/NUR";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    stylix.url = "github:danth/stylix";

    nixvim.url = "github:grizimin/.nixvim";

    quickshell = {
          url = "git+https://git.outfoxxed.me/outfoxxed/quickshell";
          inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      home-manager,
      hyprpanel,
      nur,
      stylix,
      nixvim,
      quickshell,
      ...
    }@inputs:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};

    in
    {
      nixosConfigurations.default = nixpkgs.lib.nixosSystem {
        specialArgs = {
          inherit system;
          inherit inputs;
        };

        modules = [
          { nixpkgs.overlays = [ inputs.hyprpanel.overlay ]; }
          home-manager.nixosModules.home-manager {
            home-manager.extraSpecialArgs = {inherit inputs;};
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users."grizimin" = import ./home/grizimin.nix;
          }

          stylix.nixosModules.stylix

          ./hosts/default/conf.nix
        ];
      };

      homeConfigurations = {
        grizimin = home-manager.lib.homeManagerConfiguration {
          pkgs = import nixpkgs {
            system = "x86_64-linux";
            config.allowUnfree = true;
          };
          modules = [
            stylix.homeModules.stylix
            ./home/grizimin.nix
          ];
        };
      };

    };
}
