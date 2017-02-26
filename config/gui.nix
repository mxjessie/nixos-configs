# gui.nix: configure x11 stuff common to any wm/de

{ config, pkgs, ... }:

{
  #imports = [ ./base.nix ];

  networking.wireless.enable = false;
  networking.networkmanager.enable = true;

  environment.systemPackages = with pkgs; [
    #pkgs.xautolock
    pkgs.powerline-fonts

    #pkgs.gtk
    #pkgs.gtk_engines
    #pkgs.gnome.gnome_icon_theme
    #pkgs.shared_mime_info
    pkgs.arc-theme
    pkgs.arc-icon-theme
    pkgs.hicolor_icon_theme
    pkgs.elementary-icon-theme
    #pkgs.lxappearance

    #pkgs.xfce.exo
    #pkgs.xfce.gvfs
    #pkgs.xfce.thunar
    #pkgs.xfce.thunar_volman
    #pkgs.xfce.thunar-archive-plugin
    #pkgs.xfce.xfce4icontheme
    #pkgs.xfce.terminal
    #pkgs.rxvt_unicode
    pkgs.redshift
    pkgs.xorg.xbacklight
    # internet / communication stuff
    pkgs.firefox
    pkgs.discord
    pkgs.tdesktop
    pkgs.claws-mail
  ];

  services.xserver = {
    enable = true;
    layout = "us";
    displayManager.lightdm.enable = true;
  };

  fonts = {
    enableFontDir = true;
    enableGhostscriptFonts = true;
    fonts = with pkgs; [
      corefonts
      inconsolata
      ubuntu_font_family
      unifont
      terminus_font
      powerline-fonts
    ];
  };

}
