{ config, pkgs, ... }:

{
  users.extraUsers.jessie = {
    isNormalUser = true;
    createHome = true;
    uid = 1000;
    group = "users";
    extraGroups = [
      "wheel" "audio" "video" "netdev" "networkmanager" "systemd-journal"
    ];
    shell = "/run/current-system/sw/bin/zsh";
  };

}
