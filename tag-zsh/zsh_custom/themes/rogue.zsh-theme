function virtualenv_info {
  [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}

# color user name red if shell is privileged, cyan otherwise
local user="%(!.%F{red}.%F{cyan}%n%f)"

# color prompt symbol (::) green if last command was successful
# red otherwise
local prompt_symbol="%(?.%F{green}.%F{red})::%f"

# color host name magenta if connected remotely
# cyan if connected locally
if [[ -n "$SSH_CLIENT"  ||  -n "$SSH2_CLIENT" ]]; then
  local host='%F{magenta}%m%f'
else
  local host='%F{cyan}%m%f'
fi

local user_at_host='${user}%F{green} at ${host}%f'

# truncate cwd to two directories
local cwd='%F{cyan}%2~%f'

# color git information yellow
local branch='%F{yellow}$(__git_ps1 " [%s] ")%f'

local venv='%F{red}$(virtualenv_info)%f'

PROMPT="${user_at_host} ${venv}${prompt_symbol} "
RPROMPT="${branch}${cwd}"