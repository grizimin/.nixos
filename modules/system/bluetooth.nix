{ pkgs, ... }:

{
  hardware.bluetooth = {
    enable = true;
    settings.General = {
      Experimental = true;
      FastConnectable = true;
      Enable = "Source,Sink,Media,Socket";
    };
    settings.Policy.autoEnable = true;
  };

  services.blueman.enable = true;
}
