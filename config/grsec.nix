# grsec.nix: NIXOS used HARDEN! NIXOS's DEFENSE ROSE!
# DEPRECATED: NIXOS forgot how to use HARDEN!

{ config, lib, pkgs, ... }:

{

  # if you're an acer c710 (i know i am sometimes) you might also want:
  # CHROME_PLATFORMS y
  # CHROMEOS_LAPTOP m
  # CHROMEOS_PSTORE m

  nixpkgs.config.packageOverrides = pkgs: {
    linux_grsec_nixos = pkgs.linux_grsec_nixos.override {
      extraConfig = ''
            PAX y
            GRKERNSEC y
            GRKERNSEC_CONFIG_AUTO y
            GRKERNSEC_CONFIG_DESKTOP y
            GRKERNSEC_CONFIG_SECURE y
            GRKERNSEC_CONFIG_VIRT_EPT y
      '';
    };
  };

  security.grsecurity.enable = true;

}
