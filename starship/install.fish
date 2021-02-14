#!/usr/bin/env fish
#
# `fd/install.fish` - set up 'fd' utility

if not contains starship (brew list)
    brew install starship
end
