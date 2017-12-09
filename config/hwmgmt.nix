{ config, pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    pkgs.acpi
    pkgs.cpufrequtils
    pkgs.fio
    pkgs.i7z
    pkgs.lm_sensors
    pkgs.powertop
    pkgs.smartmontools
  ];
}
