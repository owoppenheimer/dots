{ pkgs, ... }:

{
  environment = {
  	sessionVariables = {
		_JAVA_AWT_WM_NONREPARENTING = "1";
		XDG_DATA_DIRS = "/home/owppie/.nix-profile/share:/nix/profile/share:/home/owppie/.local/state/nix/profile/share:/etc/profiles/per-user/owppie/share:/nix/var/nix/profiles/default/share:/run/current-system/sw/share:/var/lib/flatpak/exports/share:/home/owppie/.local/share/flatpak/exports/share";
	};
  };
}
