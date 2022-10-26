#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

yay -S --needed \
	extra/vim \
	extra/zsh \
	aur/nerd-fonts-fira-code \
	community/starship \
	extra/gnome-keyring \
	aur/visual-studio-code-bin \
	aur/google-chrome \
	community/intel-media-driver \
	extra/vlc \
	aur/spotify \
	community/playerctl \
	community/pamixer \
	aur/slack-desktop \
	community/fwupd \
	community/the_silver_searcher \
	community/direnv \
	community/podman \
	community/alacritty \
	aur/pcloud-drive \
	community/sccache \
	community/mold \
	extra/clang \
	community/thermald \
	community/github-cli \
	community/aws-cli-v2 \
	community/kubectl \
	community/kubectx \
	aur/tilt-bin \
	aur/ctlptl-bin \
	aur/kind-bin
