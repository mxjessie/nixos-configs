# guiapps.nix: misc useful x utilities
{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    pkgs.claws-mail # what if: notmuch / offlineimap / ??
    pkgs.discord # unfree
    pkgs.firefox
    pkgs.gnome3.vinagre
    pkgs.keepassx
    pkgs.mpv
    pkgs.rss-glx
    pkgs.tdesktop
    pkgs.wireshark
    pkgs.xpdf
  ];

  boot.plymouth.enable = true;
}
