# mow.lan : acer c710 chromebook; smol road warrior whom renoise

{ config, lib, pkgs, ... }:

{
  imports = [
      ../config/base.nix
      ../config/laptop.nix
      ../config/gui.nix
      ../config/xfce.nix
      ../config/studio.nix
    ];

  nixpkgs.config.allowUnfree = true;

  nixpkgs.config.packageOverrides = pkgs: {
    linux_4_9 = pkgs.linux_4_9.override {
      extraConfig = ''
            CHROME_PLATFORMS y
            CHROMEOS_LAPTOP m
            CHROMEOS_PSTORE m
      '';
    };
  };
 
  boot = {
    initrd.luks.devices = [{
      name = "root";
      device = "/dev/sda3";
      preLVM = true;
      allowDiscards = true;
    }];

    # TODO: rebuild with CRYPTODISK = Y for encrypted /boot
    loader.grub = {
      enable = true;
      version = 2;
      device = "/dev/sda";
    };

    kernelModules = [
      "cyapa"
      "i2c_designware_pci"
      "i2c_designware_platform"
      "i2c_designware_core"
      "i2c_dev"
      "i2c_i801"
    ];

    blacklistedKernelModules = [
      "snd_pcsp"
      "snd_hda_codec_hdmi"
    ];
  };

  # this is blacklisted in something upstream, but is needed for the trackpad
  boot.postBootCommands = "${pkgs.kmod}/sbin/modprobe i2c_i801";

  networking = {
    hostName = "mow";
    domain = "lan";
  };

  #environment.systemPackages = with pkgs; [
  #  pkgs.w3m
  #];

  services.xserver = {
    synaptics = {
      enable = true;
      twoFingerScroll = true;
      horizTwoFingerScroll = true;
      fingersMap = [1 3 2];
    };
  };

  system.stateVersion = "unstable";
}
