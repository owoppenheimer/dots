{
  programs.alacritty = {
    enable = true;
    settings = {
      window.opacity = 0.88;

      font = {
        size = 14.5;
        # draw_bold_text_with_bright_colors = true;
        normal = {
          family = "JetBrainsMonoNerdFont";
          style = "Semibold";
        };
      };
    };
  };
}
