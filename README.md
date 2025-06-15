My NixOS configuration

*the work still in progress, use on your own risk. But most of the modules are fine, btw*

If you still want to install this shit, then follow these instructions:

1. Install NixOS from the latest ISO file on the official cite.

2. Run this command, to install git and neovim (if you need it to change some settings, but nano is install by default btw)
```
nix-shell -p git neovim
```

3. Copy the repository
```
git clone https://github.com/grizimin/.nixos ~/.nixos
```

4. (!IMPORTANT) Copy your hardware-configuration to the flake, otherwise, you will git kernel panic
```
cp /etc/nixos/hardware-configuration.nix ~/.nixos/hosts/default/hardware-configuration.nix
```

5. Install the configuration
```
sudo nixos-rebuild switch --flake ~/.nixos
```
This command will take a lot of your time and gb of internet. 


Enjoy half working piece of shit.
