{ pkgs, ... }:

{
  hardware.openrazer.users = [ "owppie" ];
  users.users.owppie = {
    isNormalUser = true;
    extraGroups = [ "wheel" "input" "networkmanager" "plugdev" ];
    shell = pkgs.fish;
    packages = with pkgs; [
      tree
    ];
  };
}
