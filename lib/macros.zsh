function cgrep() {
    [ "$1" == "" ] && exit 1
    find \( -name "*.cc" -o -name "*.cpp" -o -name "*.c" -o -name "*.h" -o -name "*.hpp" -o -name "*.hxx" \) \
        -type f -exec grep "$@" {} +
}

function mkcdir() {
    mkdir "$@"
    for A in "$@"; do
        if [ -d "$A" ]; then
            cd "$A"
            return $?
        fi
    done
}
