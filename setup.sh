#!/usr/bin/env bash
base="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
echo "# Setup SikuliX" >> "$HOME/${1:-".bashrc"}"
echo "function sikuli(){" >> "$HOME/${1:-".bashrc"}"
echo -e "\tbash $base/test.sh" >> "$HOME/${1:-".bashrc"}"
echo "}" >> "$HOME/${1:-".bashrc"}"
echo "All set, please restart your terminal!"