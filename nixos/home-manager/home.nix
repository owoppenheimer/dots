{ config, pkgs, ... }: {
	imports = [
		./modules
	];

	home = {
		username = "owppie";
		homeDirectory = "/home/owppie";
		stateVersion = "25.05";	

		sessionVariables = {
			SHELL = "${pkgs.fish}/bin/fish";
		};
	};
}
