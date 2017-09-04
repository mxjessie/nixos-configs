# flump.lan : new personal fileserver for media backuppery

{ config, lib, pkgs, ... }:

{
  imports = [
    ../config/base.nix
    ../config/users.nix
    ../config/nas.nix
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

  services.cron.enable = true;

  # run a zpool scrub every sunday at 9 am
  services.cron.systemCronJobs = [ "0 9 * * 0 zpool scrub flop"];

  system.stateVersion = "17.03";
}
