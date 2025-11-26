{ config, pkgs, inputs, ... }:

{
    services.wpaperd.enable = true;
    services.wpaperd.settings = {
        eDP-1 = {
            path = "/home/grizimin/.config/wallpapers/cyber";
	    sorting = "random";
        };
    };
}
