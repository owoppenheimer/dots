{
	programs.fish = {
		enable = true;
		shellAliases = {
			ff = "fastfetch";
			nv = "nvim";

			# NixOS stuff
			rebuild = "sudo nixos-rebuild switch --flake /etc/nixos";
			hrebuild = "home-manager switch --flake /etc/nixos";
			
			addpkg = "sudo nvim /etc/nixos/modules/packages.nix";
			haddpkg = "sudo nvim /etc/nixos/home-manager/modules/packages.nix";
			flake = "sudo nix flake update --flake /etc/nixos";
			generations = "nixos-rebuild list-generations";
		};	
		interactiveShellInit = ''
			if [ "$(tty)" = "/dev/tty1" ]
				niri-session
			end
			set fish_greeting
			'';
	};
}
