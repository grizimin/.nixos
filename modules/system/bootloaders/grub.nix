{ pkgs, ... }:

{
  boot.loader = {
    grub = {
      enable = true;
      device = "nodev";
      useOSProber = true;
      efiSupport = true;
            #theme = (pkgs.sleek-grub-theme.override{withStyle = "dark";});
    };
    efi.canTouchEfiVariables = true;
    efi.efiSysMountPoint = "/boot";
    timeout = 10;
  };
}
