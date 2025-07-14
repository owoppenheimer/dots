{ pkgs, inputs, ... }: {
	nixpkgs.config.allowUnfree = true;

	home.packages = with pkgs; [
		fastfetch
		htop
		ayugram-desktop
		discord
		cpu-x
		clang-tools
		droidcam
		amnezia-vpn
		mako
		gopls
		go

		swaybg
		nwg-look
		volantes-cursors

		nerd-fonts.jetbrains-mono
		nerd-fonts.caskaydia-cove
		noto-fonts
		noto-fonts-emoji
		twemoji-color-font
		font-awesome
		powerline-fonts
		papirus-icon-theme
		noto-fonts-cjk-sans

		waybar
		wlsunset
		xfce.mousepad
		wine
		winetricks
		qbittorrent
		steam
	];
}
