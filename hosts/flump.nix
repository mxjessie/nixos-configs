# flump.lan : new personal fileserver for media backuppery

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
