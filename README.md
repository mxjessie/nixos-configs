# NixOS configs!

THIS OS IS AMAZING.

## Installation

After setting up SSH deploy keys & stuff, do something like the following (as root):
```
mv /etc/nixos /tmp
git clone git@github.com:/mxjessie/nixos-configs.git /etc/nixos
mv /tmp/nixos/hardware-configuration.git /etc/nixos/
mv /tmp/nixos/configuration.nix /etc/nixos/hosts/`hostname`.nix
ln -s /etc/nixos/hosts/`hostname`.nix /etc/nixos/configuration.nix
rmdir /tmp/nixos
```

