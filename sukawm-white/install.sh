#!/bin/bash

echo "Select privilege tool:"
echo "1) sudo"
echo "2) doas"

read -rp "Choice: " choice

case "$choice" in
    1) ASROOT="sudo" ;;
    2) ASROOT="doas" ;;
    *) echo "Invalid choice"; exit 1 ;;
esac

echo "[1/9] Creating Polybar config directory"
mkdir -pv "$HOME/.config/polybar"

echo "[2/9] Creating Rofi config directory"
mkdir -pv "$HOME/.config/rofi"

echo "[3/9] Creating Kitty config directory"
mkdir -pv "$HOME/.config/kitty"

echo "[4/9] Creating Dunst config directory"
mkdir -pv "$HOME/.config/dunst"

echo "[5/9] Copying Polybar files"
cp -rvf polybar/* "$HOME/.config/polybar/"

echo "[6/9] Copying Rofi files"
cp -rvf rofi/* "$HOME/.config/rofi/"

echo "[7/9] Copying Kitty files"
cp -rvf kitty/* "$HOME/.config/kitty/"

echo "[8/9] Copying Dunst files"
cp -rvf dunst/* "$HOME/.config/dunst/"

echo "[9/9] Making shell scripts executable..."
find "$HOME/.config/polybar" -type f -name "*.sh" -exec chmod +x {} \;

echo "Installtion worked"
echo "This is outdated version :O"
