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
    pkgs.vim_configurable
    pkgs.zsh
    pkgs.nix-repl
    pkgs.wget 
    pkgs.curl 
    pkgs.rsync 
    pkgs.git
    pkgs.git-hub 
    pkgs.python3
    pkgs.ponysay # extremely important
    pkgs.pciutils
    pkgs.dmidecode
    pkgs.cpufrequtils
    pkgs.binutils
  ];

  networking.firewall = {
    enable = true;
    allowPing = true;
  };
  services.openssh.enable = true;

}
