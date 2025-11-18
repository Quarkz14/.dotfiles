for file in ~/.{aliases,git_functions}; do
  [ -r "${file}" ] && [ -f "${file}" ] && source "${file}"
done

# Enable substitution in the prompt.
setopt prompt_subst

PROMPT='%F{blue}%1/$(git_branch_name)%f $ '

export NVM_DIR="${HOME}"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
export PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true
export PUPPETEER_EXECUTABLE_PATH=/opt/homebrew/bin/chromium
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
