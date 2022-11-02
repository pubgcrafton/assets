#!/bin/bash
print_center(){
    local x
    local y
    text="$*"
    x=$(( ($(tput cols) - ${#text}) / 2))
    echo -ne "\E[6n";read -sdR y; y=$(echo -ne "${y#*[}" | cut -d';' -f1)
    echo -ne "\033[${y};${x}f$*"
}

echo -ne "\\033[2J\033[3;1f"
print_center "
\033[0;35m _   _          \033[0m
\033[0;35m| | | (_) \033[0m
\033[0;35m| |_| | |\033[0m
\033[0;35m|  _  | |\033[0m
\033[0;35m|_| |_|_|\033[0m

\033[1;32mPremium Userbot õrnatildi!\033[0m
\033[1;32mVeb manzil: http://localhost:2007\033[0m
"
