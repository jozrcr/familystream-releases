#!/usr/bin/env bash
# Installe Nuvio (version famille) sur Mac, puce Apple ou Intel, dans Applications.
#   curl -fsSL https://raw.githubusercontent.com/jozrcr/familystream-releases/main/install/macos.sh | bash
set -euo pipefail

BASE="https://github.com/jozrcr/familystream-releases/releases/latest/download"

case "$(uname -m)" in
  arm64) asset="familystream-pc-macos-arm64.dmg" ;;
  x86_64) asset="familystream-pc-macos-x86_64.dmg" ;;
  *) echo "Ce Mac n'est pas pris en charge ($(uname -m))." >&2; exit 1 ;;
esac

tmp="$(mktemp -d)"
cleanup() {
  hdiutil detach -quiet "$tmp/disk" 2>/dev/null || true
  rm -rf "$tmp"
}
trap cleanup EXIT

echo "Téléchargement de Nuvio…"
curl -fL --progress-bar -o "$tmp/Nuvio.dmg" "$BASE/$asset"
mkdir "$tmp/disk"
hdiutil attach -quiet -nobrowse -readonly -mountpoint "$tmp/disk" "$tmp/Nuvio.dmg"
app="$(find "$tmp/disk" -maxdepth 1 -name '*.app' | head -n 1)"
if [ -z "$app" ]; then
  echo "L'application est introuvable dans le fichier téléchargé." >&2
  exit 1
fi

# Applications si on peut y écrire (compte administrateur), sinon celui de l'utilisateur.
target="/Applications"
[ -w "$target" ] || { target="$HOME/Applications"; mkdir -p "$target"; }
osascript -e 'quit app "Nuvio"' >/dev/null 2>&1 || true
rm -rf "$target/Nuvio.app"
ditto "$app" "$target/Nuvio.app"
# Téléchargé sans navigateur, il n'est pas mis en quarantaine ; au cas où, on l'enlève.
xattr -dr com.apple.quarantine "$target/Nuvio.app" 2>/dev/null || true

echo "C'est installé dans $target ! Ouverture de Nuvio…"
open "$target/Nuvio.app"
