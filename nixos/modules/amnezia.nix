{ config, pkgs, ... }:

{
  systemd.services.amnezia = {
    description = "Start AmneziaVPN service";
    after = [ "multi-user.target" ];
    wantedBy = [ "multi-user.target" ];

    serviceConfig = {
      Type = "simple";
      User = "root";
      ExecStart = "${pkgs.amnezia-vpn}/bin/AmneziaVPN-service";
    };
  };
}

