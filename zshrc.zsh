ZSH_RC_DIR="${${(%):-%x}:a:h}"
ZSH_CACHE_DIR="${XDG_CACHE_HOME:-$HOME/.cache}/zshrc"

[ -e "${ZSH_CACHE_DIR}" ] || mkdir -p "${ZSH_CACHE_DIR}"

for lib_file ("${ZSH_RC_DIR}"/lib/*.zsh); do
  source "${lib_file}"
done
unset lib_file

for lib_file ("${ZSH_RC_DIR}"/custom/*.zsh(N)); do
  source "${lib_file}"
done
unset lib_file

zshrc_load_plugins
