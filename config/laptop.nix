# laptop.nix: basic laptop config, power management, etc

{ config, pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
    pkgs.powertop
    pkgs.acpi
    pkgs.upower
  ];

  services.upower.enable = true;

}
