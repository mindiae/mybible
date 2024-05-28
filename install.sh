#!/usr/bin/env sh

MODULE_DIR="${HOME}/.local/share/mybible"

[ -d "$MODULE_DIR" ] || mkdir -p "$MODULE_DIR"

cp modules/* "$MODULE_DIR"

[ -n "$1" ] && cp bin/* "$1" || echo "usage: ./install.sh [user level PATH bin dir]"
