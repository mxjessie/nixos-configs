# alacritty.nix: instal that terminal emulator i like. you know the one

{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    pkgs.alacritty
  ];
}
