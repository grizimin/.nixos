{ inputs, pkgs, ... }:

{
    wayland.windowManager.mango = {
        enable = true;
        settings = ''
            # see config.conf
	'';
        autostart_sh = ''
	 '';
    };
}
