{ pkgs, lib, config, ... }:
{
  options = {
    obs-studio.enable =
      lib.mkEnableOption "enables obs-studio";
};

config = lib.mkIf config.obs-studio.enable {
  programs.obs-studio = {
    enable = true;

    package = (
      pkgs.obs-studio.override {
        cudaSupport = true;
      }
    );

    plugins = with pkgs.obs-studio-plugins; [
      wlrobs
      obs-backgroundremoval
      obs-pipewire-audio-capture
      obs-gstreamer
      obs-vkcapture
      ];
    };
  };
}
