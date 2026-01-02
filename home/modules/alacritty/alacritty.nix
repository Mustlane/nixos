{ pkgs, lib, config, ... }: {

  options = {
    alacritty.enable =
      lib.mkEnableOption "enables alacritty";
};

config = lib.mkIf config.alacritty.enable {
  programs.alacritty = {
    enable = true;
    settings = {
      window = {
        opacity = 0.85;
        blur = true;
        };
      };  
    };
  };
}
