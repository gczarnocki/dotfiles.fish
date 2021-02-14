#!/usr/bin/env fish
#
# common.sh - common functions for `bootstrap.sh` script

set DOTFILES_ROOT (pwd -P)

function info
    echo [(set_color --bold) ' INFO ' (set_color normal)] $argv
end
