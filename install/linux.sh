#!/usr/bin/env bash
# Installe Nuvio (version famille) sur Linux : le paquet .deb quand apt est là
# (Ubuntu, Debian, Mint…), sinon l'AppImage dans ~/Applications.
#   curl -fsSL https://raw.githubusercontent.com/jozrcr/familystream-releases/main/install/linux.sh | bash
set -euo pipefail

BASE="https://github.com/jozrcr/familystream-releases/releases/latest/download"

arch="$(uname -m)"
if [ "$arch" != "x86_64" ]; then
  echo "Nuvio pour Linux existe pour les PC x86_64 seulement (cet ordinateur : $arch)." >&2
  exit 1
fi

tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT

if command -v apt-get >/dev/null 2>&1; then
  echo "Téléchargement de Nuvio…"
  curl -fL --progress-bar -o "$tmp/familystream-pc-linux-x86_64.deb" "$BASE/familystream-pc-linux-x86_64.deb"
  # apt lit le paquet sous un autre utilisateur : le dossier doit lui être lisible.
  chmod 755 "$tmp" && chmod 644 "$tmp/familystream-pc-linux-x86_64.deb"
  echo "Installation (le mot de passe de l'ordinateur est demandé)…"
  sudo apt-get install -y "$tmp/familystream-pc-linux-x86_64.deb"
else
  dest="$HOME/Applications"
  mkdir -p "$dest" "$HOME/.local/share/applications"
  echo "Téléchargement de Nuvio…"
  curl -fL --progress-bar -o "$tmp/Nuvio.AppImage" "$BASE/familystream-pc-linux-x86_64.AppImage"
  install -m 755 "$tmp/Nuvio.AppImage" "$dest/Nuvio.AppImage"
  cat > "$HOME/.local/share/applications/nuvio-familystream.desktop" <<DESKTOP
[Desktop Entry]
Type=Application
Name=Nuvio
Comment=Films et séries (version famille)
Exec="$dest/Nuvio.AppImage"
Terminal=false
Categories=AudioVideo;Video;Player;
DESKTOP
  if ! ldconfig -p 2>/dev/null | grep -q 'libmpv\.so'; then
    echo "Il manque le lecteur vidéo libmpv : installez le paquet « libmpv2 » ou « mpv-libs » de votre distribution."
  fi
fi

echo "C'est installé ! Ouvrez Nuvio depuis le menu des applications."
