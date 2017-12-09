# base.nix: basic have-this-everywhere nixos config

{ config, lib, pkgs, ... }:

{
  imports = [ 
    ../hardware-configuration.nix
    ./users.nix
  ];

  # Select internationalisation properties.
  # i18n = {
  #   consoleFont = "Lat2-Terminus16";
  #   consoleKeyMap = "us";
  #   defaultLocale = "en_US.UTF-8";
  # };

  time.timeZone = "America/Los_Angeles";

  environment.systemPackages = with pkgs; [
    pkgs.binutils
    pkgs.curl 
    pkgs.dmidecode
    pkgs.dnsutils
    pkgs.git
    pkgs.git-hub 
    pkgs.moreutils
    pkgs.mosh
    pkgs.mtr
    pkgs.nettools
    pkgs.nix-repl
    pkgs.nmap
    pkgs.pciutils
    pkgs.python27Packages.powerline
    pkgs.python36Packages.powerline
    pkgs.rsync 
    pkgs.screen
    pkgs.strace
    pkgs.tmux
    pkgs.vim_configurable
    pkgs.wget 
    pkgs.zsh
  ];

  networking.firewall = {
    enable = true;
    allowPing = true;
  };
  services.openssh.enable = true;

}
