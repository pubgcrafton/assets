#!/bin/bash
print_center(){
    local x
    local y
    text="$*"
    x=$(( ($(tput cols) - ${#text}) / 2))
    echo -ne "\E[6n";read -sdR y; y=$(echo -ne "${y#*[}" | cut -d';' -f1)
    echo -ne "\033[${y};${x}f$*"
}

run_in_bg() {
    eval "$@" &>/dev/null & disown;
}

echo -e "\033[0;96mPremium Userbot oʻrnatilmoqda...\033[0m"

eval "cd ~/ &&
rm -rf Premium &&
git clone https://github.com/pubgcrafton/Premium &&
cd Premium &&
pip install -U pip &&
pip install -r requirements.txt &&
echo '' > ~/../usr/etc/motd &&
echo 'clear && . <(wget -qO- https://raw.githubusercontent.com/pubgcrafton/assets/main/premium_banner.sh) && cd ~/Premium && python3 -m premium --port 2007' > ~/.bash_profile"

echo -e "\033[0;96mShaxsiy Userbot boshlanmoqda...\033[0m"

run_in_bg "python3 -m premium --port 2007"
sleep 10

echo -ne "\\033[2J\033[3;1f"
print_center "
\033[0;35m _   _        \033[0m
\033[0;35m| | | (_) \033[0m
\033[0;35m| |_| | |\033[0m
\033[0;35m|  _  | |\033[0m
\033[0;35m|_| |_|_|_|\033[0m

\033[1;32mPremium Userbot o‘rnatildi!\033[0m
\033[1;32mVeb manzil: http://localhost:2007\033[0m
"

eval "termux-open-url http://localhost:2007"


