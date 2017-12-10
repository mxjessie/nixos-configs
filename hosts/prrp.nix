# prrp: thinkpad t420 yay! 

{ config, pkgs, ... }:

{
  imports = [
    ../config/base.nix
    ../config/bootsplash.nix
    ../config/devel.nix
    ../config/guiapps.nix
    ../config/laptop.nix
    #../config/rust-nightly-overlay.nix
    ../config/xorg.nix
    ../config/xorg/i3.nix
  ];

  boot.initrd.luks.devices.crypted.device = "/dev/sda2";

  boot.loader.grub.enable = true;
  boot.loader.grub.version = 2;
  boot.loader.grub.device = "/dev/sda";

  boot.supportedFilesystems = [ "bcachefs" ];

  networking = {
    hostName = "prrp";
    domain = "lan";
    #wireless.enable = true;
  };

  nixpkgs.config.allowUnfree = true;

  system.stateVersion = "17.09";

}
