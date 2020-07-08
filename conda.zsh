# Outputs current conda environment info 
function conda_prompt_info() {
    local ref
    ref=$(command basename "$CONDA_PREFIX" 2> /dev/null)
    if [[ $ref ]]; then
        echo "%F{green}($(command basename "$CONDA_PREFIX" 2> /dev/null))%f"
    else
        echo ""
    fi
}

function virtual_env_prompt_info() {
    local ref
    ref=$(command basename "$VIRTUAL_ENV" 2> /dev/null)
    if [[ $ref ]]; then
        echo "%F{green}($(command basename "$VIRTUAL_ENV" 2> /dev/null))%f"
    else
        echo ""
    fi
}
