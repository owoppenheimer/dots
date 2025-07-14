{
   xdg.configFile."mako/config".text = ''
      font=Sans Serif
      format=<b>%s</b>\n%b
      sort=-time
      output=HDMI-A-1
      layer=overlay
      anchor=bottom-center
      background-color=#2e3440
      width=300
      height=110
      margin=5
      padding=0,5,10
      border-size=2
      border-color=#00C9C8
      border-radius=15
      icons=1
      max-icon-size=32
      default-timeout=5000
      ignore-timeout=1

      [urgency=normal]
      border-color=#00C9C8

      [urgency=high]
      border-color=#bf616a
      default-timeout=0
   '';
}
