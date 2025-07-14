{ pkgs, ... }:

{
  boot.kernelPackages = pkgs.linuxPackages_latest;
  boot.kernelModules = [ "v4l2loopback" ];
}
