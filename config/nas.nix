# nas.nix: network-attached zfs storage host

{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    pkgs.fio
    pkgs.gptfdisk
    pkgs.sshfs-fuse
    pkgs.syncthing
    #pkgs.tahoelafs
  ];

}
