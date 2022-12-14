# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/development/local/zshrc/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source "${${(%):-%x}:a:h}/zshrc.zsh"

# To customize prompt, run `p10k configure` or edit ~/development/local/zshrc/.p10k.zsh.
[[ ! -f "${ZDOTDIR}"/.p10k.zsh ]] || source "${ZDOTDIR}"/.p10k.zsh
