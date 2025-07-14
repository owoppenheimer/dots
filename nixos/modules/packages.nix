{ pkgs, ... }:

{
  programs.firefox.enable = true;
  programs.niri.enable = true;
  programs.fish.enable = true;
  hardware.openrazer.enable = true;
  services.flatpak.enable = true;

  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
     # urgency: highest
     neovim
     wget
     niri
     alacritty
     git
     firefox
     wofi
     nftables
     home-manager
     pipewire
     wireplumber
     pavucontrol
     xwayland-satellite
     xdg-utils
     pciutils
     usbutils
     glib
     xorg.libXxf86vm
     xorg.libXtst
     xorg.libXext
     openjfx21
     gtk3
     seatd
     eudev
     fontconfig
     fontconfig.lib
     freetype
     dbus
     xorg.libxcb
     xorg.libX11
     polkit_gnome

     # urgency: low
     fish
     wl-clipboard
     neovim
     file
     clang
     jdk8
     openrazer-daemon
     polychromatic

     # urgency: lowest
     nemo
     liberation_ttf
     source-sans-pro
     cups
  ];
}
