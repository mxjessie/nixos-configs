# xfce.nix: use xfce as the desktop manager

{ config, pkgs, ... }:

{
  #imports = [ ./base.nix ];

  #environment.systemPackages = with pkgs; [
    #pkgs.gtk
    #pkgs.gtk_engines
    #pkgs.gnome.gnome_icon_theme
    #pkgs.shared_mime_info
    #pkgs.arc-theme
    #pkgs.arc-icon-theme
    #pkgs.hicolor_icon_theme
    #pkgs.elementary-icon-theme
    #pkgs.lxappearance
    #pkgs.powerline-fonts

    #pkgs.xfce.exo
    #pkgs.xfce.gvfs
    #pkgs.xfce.thunar
    #pkgs.xfce.thunar_volman
    #pkgs.xfce.thunar-archive-plugin
    #pkgs.xfce.xfce4icontheme
    #pkgs.xfce.terminal
    #pkgs.rxvt_unicode
  #];

  services.xserver = {
    desktopManager.xfce.enable = true;
  };

  #fonts = {
  #  enableFontDir = true;
  #  enableGhostscriptFonts = true;
  #  fonts = with pkgs; [
  #    corefonts
  #    inconsolata
  #    ubuntu_font_family
  #    unifont
  #    terminus_font
  #    powerline-fonts
  #  ];
  #};

}
