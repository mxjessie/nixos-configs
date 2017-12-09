# xorg/xfce.nix: use xfce as the desktop manager

{ config, pkgs, ... }:

{
  services.xserver = {
    desktopManager.xfce.enable = true;
  };
}
