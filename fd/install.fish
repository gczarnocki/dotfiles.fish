#!/usr/bin/env fish
#
# `fd/install.fish` - set up 'fd' utility

if command -qs fdfind
    abbr -a 'find' 'fd'
end

abbr -a 
