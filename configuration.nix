{ config, pkgs, ... }:

{
  imports = [
    <home-manager/nix-darwin>
  ];

  users.users.eve = {
    name = "sage";
    home = "/Users/sage";
  };
  home-manager.users.sage = { pkgs, ... }: {
    home.packages = with pkgs; [
      # vim
    ];
    programs.zsh.enable = true;

    # The state version is required and should stay at the version you
    # originally installed.
    home.stateVersion = "24.11";
  };
  home-manager.useUserPackages = true;

  homebrew = {
    enable = true;
    brews = [
      "bat"
      "bottom"
      "eza"
      "cava"
      "cmatrix"
      "ffmpeg"
      "lua"
      "luarocks"
      "go"
      "hugo"
      "yt-dlp"
      "mpv"
      "neovim"
      "pipx"
      "sevenzip"
      "saulpw/vd/visidata"
      "weasyprint"
      "yazi"
      "zsh-autosuggestions"
      "zsh-history-substring-search"
      "zsh-syntax-highlighting"
    ];
    casks = [
      "aerospace"
      # "android-studio"
      # "background-music"
      # "basictex"
      # "blender"
      # "cheatsheet"
      "docker"
      # "dropzone"
      "font-caskaydia-cove-nerd-font"
      "font-fira-code-nerd-font"
      "font-jetbrains-mono-nerd-font"
      "font-open-dyslexic-nerd-font"
      "gb-studio"
      # "gamemaker"
      # "gimp"
      # "godot"
      # "love"
      "hiddenbar"
      "iina"
      "kitty"
      "keyclu"
      # "mark-text"
      "multipatch"
      # "obs"
      "sonic-pi"
      # "unity-hub"
      # "utm"
      "visual-studio-code"
      # "zulu"
    ];
    taps = [
      # "hashicorp/tap"
      "homebrew/bundle"
      "homebrew/cask-fonts"
      "homebrew/core"
      "homebrew/services"
      # "localstack/tap"
      "nikitabobko/tap"
      "saulpw/vd"
    ];
  };

  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs; [
    # vim
  ];

  # Use custom location for configuration.nix.
  environment.darwinConfig = "$HOME/.config/nix-darwin/configuration.nix";

  # Enable alternative shell support in nix-darwin.
  programs.zsh.enable = true;

  # Used for backwards compatibility, please read the changelog before changing.
  # $ darwin-rebuild changelog
  system.stateVersion = 5;
}

