# flump.lan : new personal fileserver for media backuppery
# i pretty much dumped this for debian for reasons i don't remember. o wel

{ config, lib, pkgs, ... }:

{
  imports = [
    ../config/base.nix
    ../config/users.nix
  ];

  boot = {
    loader.grub = {
      enable = true;
      version = 2;
      device = "/dev/sda";
    };
    supportedFilesystems = [ "zfs" ];
  };

  networking = {
    hostId = "f00fb00b"; # zfs insists
    hostName = "flump";
    domain = "lan";
  };

  system.stateVersion = "17.03";
}
