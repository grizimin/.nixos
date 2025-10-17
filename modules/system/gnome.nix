{ inputs, pkgs, ... }:

{
    services.desktopManager.gnome.enable = true;
    environment.gnome.excludePackages = with pkgs; [ gnome-tour gnome-user-docs ];
    environment.systemPackages = with pkgs; [
    	gnomeExtensions.forge
	gnome-tweaks
    ];
}
