#!/bin/zsh
#
# Uninstall all pip packages.

if [ -x "$(command -v /usr/local/bin/pip3)" ]; then
  echo "Uninstalling Python packages..."
  pip3 freeze | xargs pip3 uninstall --yes --quiet  
else
  echo "Error: pip is not installed" >&2
fi
