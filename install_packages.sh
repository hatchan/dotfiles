#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

yay -S --needed \
	extra/vim \
	extra/zsh \
	extra/ttf-firacode-nerd \
	extra/starship \
	extra/gnome-keyring \
	aur/visual-studio-code-bin \
	aur/google-chrome \
	extra/intel-media-driver \
	extra/vlc \
	aur/spotify \
	extra/playerctl \
	extra/pamixer \
	aur/slack-desktop \
	extra/fwupd \
	extra/the_silver_searcher \
	extra/direnv \
	extra/podman \
	extra/alacritty \
	aur/pcloud-drive \
	extra/sccache \
	extra/mold \
	extra/clang \
	extra/thermald \
	extra/github-cli \
	extra/aws-cli-v2 \
	extra/kubectl \
	extra/kubectx \
	aur/tilt-bin \
	aur/ctlptl-bin \
	aur/kind-bin \
	extra/terraform \
	extra/cargo-nextest \
	extra/helm \
	extra/discord \
	aur/ookla-speedtest-bin \
	aur/protonvpn \
	extra/yt-dlp \
	extra/smbclient \
	extra/obsidian \
	extra/arduino-cli \
	aur/arduino-ide-bin \
	aur/phoronix-test-suite \
	extra/binaryen \
	extra/visidata \
	extra/fzf \
	wireguard-tools \
	aur/1password-cli \
	aur/1password \
	extra/noto-fonts-emoji
