{ config, pkgs, ... }:

{
  systemd.services.zapret-discord-youtube = {
    description = "Custom Script Service";
    after = [ "network-online.target" ];
    wants = [ "network-online.target" ];
    wantedBy = [ "multi-user.target" ];

    serviceConfig = {
      Type = "simple";
      WorkingDirectory = "/home/owppie/zapret-discord-youtube-linux";
      User = "root";
      ExecStart = "${pkgs.bash}/bin/bash /home/owppie/zapret-discord-youtube-linux/main_script.sh -nointeractive";
      ExecStop = "${pkgs.bash}/bin/bash /home/owppie/zapret-discord-youtube-linux/stop_and_clean_nft.sh";
      ExecStopPost = "${pkgs.bash}/bin/bash -c 'echo \"Сервис завершён\"'";
      PIDFile = "/run/zapret_discord_youtube.pid";

      Environment = [
        "PATH=${pkgs.bash}/bin:${pkgs.sudo}/bin:${pkgs.git}/bin:${pkgs.nftables}/bin:${pkgs.coreutils}/bin:${pkgs.curl}/bin:${pkgs.iproute2}/bin:${pkgs.gnugrep}/bin:${pkgs.gnused}/bin"
      ];
      ExecStartPre = "${pkgs.coreutils}/bin/mkdir -p /run/zapret-discord-youtube";
    };
  };
}
