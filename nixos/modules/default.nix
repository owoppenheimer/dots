{
	imports = [
		./garbagecollector.nix
		./networking.nix
		./timezone.nix
		./envs.nix
		./kernel.nix
		./packages.nix
		./users.nix
		./fonts.nix
		./loader.nix
		./pipewire.nix
		./zapret.nix
		./nix.nix
		./polkit.nix
		./amnezia.nix

		# disable nix-alien, because it needs a 256sha hash in pure mode
		# ./nix-alien.nix
	];
}
