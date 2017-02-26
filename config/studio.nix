# studio.nix: JACK-powered audio studio thing

{ config, pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
    pkgs.a2jmidid
    pkgs.calf
    pkgs.jaaa
    pkgs.jack2Full
    pkgs.japa
    pkgs.qjackctl
    pkgs.qtractor
  ];

}
