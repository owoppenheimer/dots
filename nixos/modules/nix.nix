{ pkgs, ... }:

{
  programs.nix-ld.enable = true;
  programs.nix-ld.libraries = with pkgs; [
  	eudev
	glib
	fontconfig
	fontconfig.lib
	freetype
	dbus
	fuse
	xorg.libxcb
	xorg.libX11
	xorg.libXext
	xorg.libXrender
	xorg.libXtst
	xorg.libXi
	xorg.libXcursor
	xorg.libXrandr
	xorg.libxcb
	xorg.libXi
	xorg.libXp
	xorg.libXt
	xorg.libXv
	xorg.libXfont
	xorg.libXTrap
	xorg.libXfont2
	xorg.libXfixes
	xorg.libXxf86vm
	xorg.libXxf86misc
  ];
}
