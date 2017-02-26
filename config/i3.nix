# gui.nix: use i3 as the desktop manager

{ config, pkgs, ... }:

{
  #imports = [ ./base.nix ];

  environment.systemPackages = with pkgs; [
    # window manager + basic essentials
    pkgs.lightdm
    pkgs.i3
    pkgs.i3status
    pkgs.i3lock-fancy
    pkgs.xautolock
    pkgs.dmenu
    pkgs.powerline-fonts

    #pkgs.gtk
    pkgs.gtk_engines
    #pkgs.gnome.gnome_icon_theme
    pkgs.shared_mime_info
    pkgs.arc-theme
    pkgs.arc-icon-theme
    pkgs.hicolor_icon_theme
    pkgs.elementary-icon-theme
    pkgs.lxappearance

    pkgs.xfce.exo
    pkgs.xfce.gvfs
    pkgs.xfce.thunar
    pkgs.xfce.thunar_volman
    pkgs.xfce.thunar-archive-plugin
    pkgs.xfce.xfce4icontheme
    pkgs.xfce.terminal
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
    windowManager.i3.enable = true;
    windowManager.default = "i3";
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
