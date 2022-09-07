# editor
export EDITOR=nvim
export VISUAL=nvim

# colors
export GCC_COLORS="error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01"

# pagers
export SYSTEMD_PAGER=
export GIT_PAGER=

# make
export MAKEFLAGS="-j$(nproc)"

# path
path=("$HOME/.local/bin" $path)
export PATH
