# xorg.nix: configure stuff for a GUI-ish desktop

{ config, pkgs, ... }:

{
  networking.networkmanager.enable = true;

  environment.systemPackages = with pkgs; [
    pkgs.lightdm
    pkgs.firefox
    pkgs.redshift
    pkgs.xorg.xbacklight
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
      fira-code
      inconsolata
      powerline-fonts
      terminus_font
      ubuntu_font_family
    ];
  };

}
