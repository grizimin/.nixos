{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    mango.url = "github:DreamMaoMao/mango";

    stylix.url = "github:danth/stylix";
    zen-browser.url = "github:0xc000022070/zen-browser-flake";
  };

  outputs =
    {
      self,
      nixpkgs,
      home-manager,
      plasma-manager,
      stylix,
      mango,
      ...
    }@inputs:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      nixosConfigurations.nixzimin = nixpkgs.lib.nixosSystem {
        specialArgs = {
          inherit system;
          inherit inputs;
        };

        modules = [

            ./modules/hardware-configuration.nix

            ./modules/system/hyprland.nix
            ./modules/system/stylix.nix
            ./modules/system/nvidia.nix
            ./modules/system/singbox.nix
            ./modules/system/login-managers/ly.nix

            ./modules/system/bootloaders/grub.nix
            ./modules/system/plymouth.nix
            ./modules/system/pipewire.nix
            ./modules/system/bluetooth.nix
            ./modules/system/i18n.nix
            ./modules/system/networking.nix
            ./modules/system/steam.nix
	    ./modules/system/packages.nix
	    ./modules/system/users.nix

            inputs.stylix.nixosModules.stylix
	    inputs.mango.nixosModules.mango
            inputs.home-manager.nixosModules.home-manager {
                home-manager = {
                    extraSpecialArgs = {inherit inputs;};
                    useUserPackages = true;
                    users."grizimin" = import ./home/grizimin.nix;
                };
            }

        ];
      };

    };
}

