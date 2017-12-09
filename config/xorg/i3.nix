# xorg/i3.nix: use i3 as the desktop manager

{ config, pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
    pkgs.i3
    pkgs.i3status
    pkgs.i3lock-fancy
    pkgs.xautolock
    pkgs.dmenu
  ];

  services.xserver = {
    windowManager.i3.enable = true;
    windowManager.default = "i3";
  };

}
