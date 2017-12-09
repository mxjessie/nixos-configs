# guiapps.nix: misc useful x utilities
{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    pkgs.byzanz
    pkgs.claws-mail
    pkgs.chromium
    pkgs.firefox
    pkgs.firefox-esr
    pkgs.keepassx
    pkgs.mpv
    pkgs.rss-glx
    pkgs.vinagre
    pkgs.wireshark
    pkgs.xpdf
  ];

  boot.plymouth.enable = true;
}
