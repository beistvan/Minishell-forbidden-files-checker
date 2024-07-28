#!/bin/bash

echo "Forbidden functions checker for minishell (Subject v7.1)"

symbols=$(nm -u ./minishell)

allowed_funcs=(readline rl_clear_history rl_on_new_line rl_replace_line rl_redisplay add_history printf malloc free write access open read close fork wait waitpid wait3 wait4 signal sigaction sigemptyset sigaddset kill exit getcwd chdir stat lstat fstat unlink execve dup dup2 pipe opendir readdir closedir strerror perror isatty ttyname ttyslot ioctl getenv tcsetattr tcgetattr tgetent tgetflag tgetnum tgetstr tgoto tputs)

forbidden_funcs=()

while read -r symbol; do
    symbol=$(echo "$symbol" | cut -c3- | sed 's/@.*//')
    
    if [[ $symbol == _* ]]; then
        continue
    fi
 
    if [[ ! " ${allowed_funcs[@]} " =~ " ${symbol} " ]]; then
        forbidden_funcs+=("$symbol")
    fi
done <<< "$(nm -u ./minishell)"

if [ ${#forbidden_funcs[@]} -eq 0 ]; then
    echo "✅ OK: No forbidden functions found. ✅"
else
    echo "❌Forbidden functions detected❌:"
    for func in "${forbidden_funcs[@]}"; do
        echo "$func"
    done
fi
