{ inputs, config, pkgs, ...}:

{
  users.users.grizimin = {
    isNormalUser = true;
    description = "grizimin";
    extraGroups = [
      "networkmanager"
      "wheel"
      "vboxusers"
    ];
    packages = with pkgs; [ ];
    shell = pkgs.zsh;
  };
}
