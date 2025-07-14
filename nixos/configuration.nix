{ config, lib, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./modules
    ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  services.printing.enable = true;

  # The same as hardware.opengl.enable = true;
  hardware.graphics.enable = true;

  system.stateVersion = "25.05"; # Did you read 'man configuration.nix'?
}
