{ config, pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    pkgs.rustup
    pkgs.python27Full
    pkgs.python36Full
    pkgs.ruby_2_4
    pkgs.subversion
  ];
}
