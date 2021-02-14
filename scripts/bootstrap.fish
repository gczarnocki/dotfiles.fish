set DOTFILES_ROOT (pwd -P)

function mydate
    echo (date +'%Y-%m-%d %H:%M:%S')
end


function info
    echo [(set_color --bold)'INFO'(set_color normal)] $argv
end

function success
    echo [(set_color green --bold)' OK '(set_color normal)] $argv
end

function warn
    echo [(set_color --bold bryellow)'WARN'(set_color normal)] $argv
end

function abort
	echo [(set_color --bold yellow)'ABORT'(set_color normal)] $argv
	exit 1
end

function error
    echo [(set_color --bold red)'ERROR'(set_color normal)] $argv
end

if not grep -q (command -v fish) /etc/shells
    command -v fish | sudo tee /etc/shells
        and success "(command -v fish) added to /etc/shells"
        or abort 'Adding to /etc/shells'
end

chsh -s /usr/local/bin/fish (whoami)q

curl -sL git.io/fisher | source && fisher install jorgebucaran/fisher
    and success 'Fisher'
    or abort 'Fisher'

fisher update
    and success 'Fisher: update'
    or abort 'Fisher: update'

success "Done."
exit 0