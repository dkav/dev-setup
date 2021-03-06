#!/bin/zsh
#
# Install base packages for Ruby development.

if [ -x "$(command -v /usr/local/opt/ruby/bin/gem)" ]; then
  echo "Install Ruby Gems..."
  cd ${0:A:h}
  gem update --system --silent 1>/dev/null
  gem cleanup
  echo "Installing gems..."
  gem install --file Gemfile --silent
else
  echo "Error: gem is not installed" >&2
fi
