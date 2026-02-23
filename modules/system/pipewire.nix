{ pkgs, ... }:

{
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    wireplumber.enable = true;
  };

  services.pipewire.wireplumber.extraConfig.bluetooth = {
    "bluez-monitor.conf".monitor.bluez.properties = {
      "bluez5.disable-headset-profile" = true;
      "bluez5.enable-sbc-xq" = true;
    };
  };

}
