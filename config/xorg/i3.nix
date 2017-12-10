# xorg/i3.nix: use i3 as the desktop manager

{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    pkgs.dmenu
    pkgs.dunst
    pkgs.i3
    pkgs.i3lock-fancy
    pkgs.i3status
    pkgs.libnotify
    pkgs.xautolock
  ];

  services.xserver = {
    windowManager.i3.enable = true;
    windowManager.default = "i3";
  };
}
