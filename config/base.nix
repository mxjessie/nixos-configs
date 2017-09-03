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
    pkgs.cpufrequtils
    pkgs.curl 
    pkgs.gptfdisk
    pkgs.dmidecode
    pkgs.git
    pkgs.git-hub 
    pkgs.mosh
    pkgs.nix-repl
    pkgs.pciutils
    pkgs.python3
    pkgs.rsync 
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
