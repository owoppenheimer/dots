{ pkgs, ... }:

{
  systemd.user.services.wlsunset = {
    Unit = {
      Description = "Adjust screen color temperature with wlsunset";
      After = [ "graphical-session.target" ];
      PartOf = [ "graphical-session.target" ];
    };
    Service = {
      Type = "simple";
      ExecStart = "${pkgs.wlsunset}/bin/wlsunset -T 9500";
      Restart = "on-failure";
      Environment = [
        "WAYLAND_DISPLAY=wayland-1"
        "XDG_RUNTIME_DIR=/run/user/%U"
      ];
    };
    Install = {
      WantedBy = [ "graphical-session.target" ];
    };
  };
}
