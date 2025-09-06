#!/bin/bash

# ┌────────────────────────────────────────────────────────────┐
# │              DARKBOSS1BD TERMINAL CUSTOMIZER               │
# │         Auto Branding + Hacker Animation + Banner          │
# │       Telegram: https://t.me/darkvaiadmin                  │
# │       Website: https://serialkey.top/                      │
# └────────────────────────────────────────────────────────────┘

# Color Variables
GREEN='\033[1;32m'
RED='\033[1;31m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
NC='\033[0m' # No Color

# Function to show hacker typing animation
hacker_animation() {
    echo -e "${GREEN}"
    msg="INITIALIZING DARKBOSS1BD TERMINAL..."
    for ((i=0; i<${#msg}; i++)); do
        echo -n "${msg:$i:1}"
        sleep 0.05
    done
    echo -e "${NC}\n"
    sleep 0.5
}

# Function to print banner
print_banner() {
    clear
    echo -e "${GREEN}"
    cat << "EOF"

    ██████╗  █████╗ ██╗  ██╗███████╗██████╗ ██╗   ██╗███████╗
    ██╔══██╗██╔══██╗██║ ██╔╝██╔════╝██╔══██╗██║   ██║██╔════╝
    ██║  ██║███████║█████╔╝ █████╗  ██████╔╝██║   ██║███████╗
    ██║  ██║██╔══██║██╔═██╗ ██╔══╝  ██╔══██╗██║   ██║╚════██║
    ██████╔╝██║  ██║██║  ██╗███████╗██║  ██║╚██████╔╝███████║
    ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚══════╝
                  𝕯𝖊𝖛𝖊𝖑𝖔𝖕𝖊𝖉 𝖇𝖞 𝖉𝖆𝖗𝖐𝖇𝖔𝖘𝖘𝖎𝖇𝖉
EOF
    echo -e "${NC}"
    echo -e "   ${YELLOW}⚡ Telegram: ${BLUE}https://t.me/darkvaiadmin${NC}"
    echo -e "   ${YELLOW}🌐 Website: ${BLUE}https://serialkey.top/${NC}"
    echo ""
    sleep 1
}

# Step 1: Show Animation & Banner
print_banner
hacker_animation

# Step 2: Create .termux directory if not exists
mkdir -p ~/.termux

# Step 3: Set Hacker Color Scheme (Green on Black)
cat > ~/.termux/colors.properties << 'EOF'
foreground = #00ff00
background = #000000
cursor = #00ff00
color0 = #000000
color1 = #ff0000
color2 = #33ff33
color3 = #ffff00
color4 = #0066ff
color5 = #cc00ff
color6 = #00ffff
color7 = #d0d0d0
color8 = #808080
color9 = #ff0000
color10 = #33ff33
color11 = #ffff00
color12 = #0066ff
color13 = #cc00ff
color14 = #00ffff
color15 = #ffffff
EOF

# Step 4: Change Terminal Prompt to darkboss1bd
echo 'export PS1="\\[\\033[1;32m\\]darkboss1bd@terminal\\[\\033[0m\\]\\[\\033[1;31m\\]~\\[\\033[0m\\]\\[\\033[1;32m\\]\$ \\[\\033[0m\\]"' >> ~/.bashrc

# Step 5: Reload bashrc
source ~/.bashrc 2>/dev/null || echo "Please restart Termux to apply changes."

# Step 6: Restart Termux properties (if termux-api installed)
if command -v termux-reload-settings >/dev/null 2>&1; then
    termux-reload-settings
fi

# Final Message
echo -e "${GREEN}[✓] SUCCESS!${NC} Your terminal is now branded as ${YELLOW}darkboss1bd${NC}."
echo -e "${BLUE}Restart Termux${NC} to see full effect if prompt didn't change."
echo -e "\n${YELLOW}Stay Connected:${NC}"
echo -e "   Telegram: ${BLUE}https://t.me/darkvaiadmin${NC}"
echo -e "   Website: ${BLUE}https://serialkey.top/${NC}\n"

echo -e "${RED}WARNING:${NC} This script is for educational purposes only."