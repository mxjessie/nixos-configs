{ config, pkgs, ...}: # idk what this does / these do precisely
{
  rustNightlyNixRepo = pkgs.fetchFromGitHub {
     owner = "solson";
     repo = "rust-nightly-nix";
     # old revision. i don't think i can do this like this. . ?
     rev = "9e09d579431940367c1f6de9463944eef66de1d4";
     #rev = "7081bacc88037d9e218f62767892102c96b0a321"; # new
     # what is this of? 
     sha256 = "03zkjnzd13142yla52aqmgbbnmws7q8kn1l5nqaly22j31f125xy";
  };

  # this errors out; it can't find rustNightlyNixRepo
  rustPackages = pkgs.callPackage rustNightlyNixRepo { };
}
