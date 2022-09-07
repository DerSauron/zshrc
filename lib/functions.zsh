function zshrc_source_file()
{
    [ -f "${ZSH_RC_DIR}/$1" ] && source "${ZSH_RC_DIR}/$1"
}

function zshrc_load_plugins()
{
    for plugin_path ("${ZSH_RC_DIR}"/plugins/*(N)); do
        plugin_name="${plugin_path:t}"

        zshrc_source_file "plugins/${plugin_name}/${plugin_name}.plugin.zsh" || \
        zshrc_source_file "plugins/${plugin_name}/${plugin_name}.zsh" || \
        zshrc_source_file "plugins/${plugin_name}/${plugin_name}.zsh-theme" || \
        { echo "Plugin ${plugin_name} could not be loaded"; exit 1 }

        completion_file_path=$(ls "${ZSH_RC_DIR}/plugins/${plugin_name}"/_*(N))
        if [ -n "${completion_file_path}" ]; then
            completion_file="$(basename "${completion_file_path}")"
            compinit "${completion_file:1}"
        fi
    done
    unset plugin_path
    unset plugin_name
}
