# prrp: thinkpad t420 yay! 
# TODO: media keys, accelerometer, syncthing, rust + i3status+rs, renoise..
# idefk how to build derivations and i can't use nixos daily until i learn how

{ config, pkgs, ... }:

{
  imports = [
    #../config/alacritty.nix
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

  # TODO: rebuild install media w/ this
  boot.supportedFilesystems = [ "bcachefs" ];

  networking = {
    hostName = "prrp";
    domain = "lan";
    # disable for networkmanager ig
    #wireless.enable = true;
  };

  nixpkgs.config.allowUnfree = true;

  system.stateVersion = "17.09";

}
