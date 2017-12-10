# devel.nix: dev stuff
{ config, pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    pkgs.cmake
    pkgs.python27Full
    pkgs.python36Full
    pkgs.ruby_2_4
    pkgs.rustup
    pkgs.subversion
  ];
}
