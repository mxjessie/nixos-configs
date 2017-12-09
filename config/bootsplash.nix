{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    pkgs.plymouth
  ];

  boot.plymouth.enable = true;
}
