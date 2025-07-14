{ pkgs, lib, ... }: {
  systemd.user.services.swaybg = {
    Unit = {
      Description = "Set wallpaper using swaybg";
      After = [ "graphical-session.target" ];
      PartOf = [ "graphical-session.target" ];
    };
    Service = {
      Type = "simple";
      ExecStart = ''
        ${pkgs.swaybg}/bin/swaybg -i ${pkgs.fetchurl {
          url = "https://i.imgur.com/yEqGS3Q.png";
          sha256 = "1xbblxs4ks8b8nzzzcxf7bsyxm9xzy0w0dp4nxzymrmvks0y4w1r";
        }} -m fill
      '';
      Restart = "on-failure";
    };
    Install = {
      WantedBy = [ "graphical-session.target" ];
    };
  };
}
