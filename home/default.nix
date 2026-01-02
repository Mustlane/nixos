{ pkgs, lib, ... }: {

  imports = [
    ./modules/zsh/zsh.nix
    ./modules/sway/sway.nix
    ./modules/foot/foot.nix
    ./modules/kitty/kitty.nix
    ./modules/alacritty/alacritty.nix
    ./modules/git/git.nix
    ./modules/cliphist/cliphist.nix
    ./modules/firefox/firefox.nix
    ./modules/neovim/neovim.nix
    ./modules/nix-index/nix-index.nix
    ./modules/zed-editor/zed-editor.nix
    ./modules/kdeconnect/kdeconnect.nix
    ./modules/obs-studio/obs-studio.nix
  ];

  zsh.enable = true;
  sway.enable = true;
  foot.enable = false;
  kitty.enable = true;
  alacritty.enable = true;
  git.enable = true;
  cliphist.enable = true;
  firefox.enable = true;
  neovim.enable = true;
  nix-index.enable = true;
  zed-editor.enable = true;
  kdeconnect.enable = true;
  obs-studio.enable = true;
}
