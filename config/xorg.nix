# xorg.nix: configure stuff for a GUI-ish desktop

{ config, pkgs, ... }:

{
  networking.networkmanager.enable = true;

  environment.systemPackages = with pkgs; [
    #pkgs.font-awesome-ttf
    pkgs.lightdm
    #pkgs.powerline-fonts
    pkgs.redshift
    pkgs.terminator
    pkgs.xorg.xbacklight
    pkgs.xscreensaver
  ];

  services.xserver = {
    enable = true;
    layout = "us";
    displayManager.lightdm.enable = true;
    synaptics = {
      enable = true;
      twoFingerScroll = true;
      horizTwoFingerScroll = true;
      # what does this do?
      fingersMap = [1 3 2];
    };
  };

  fonts = {
    enableFontDir = true;
    enableGhostscriptFonts = true;
    fonts = with pkgs; [
      fira-code
      font-awesome-ttf
      inconsolata
      noto-fonts
      powerline-fonts
      terminus_font
      ubuntu_font_family
    ];
  };

}
