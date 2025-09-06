#!/bin/bash

# ┌────────────────────────────────────────────────────────────┐
# │           DARKBOSS1BD TERMINAL CUSTOMIZER v2.0             │
# │      One-Click Hacker Terminal + Animation + Branding      │
# │       Developed by: darkboss1bd (Security Expert)           │
# │       Telegram : https://t.me/darkvaiadmin                 │
# │       Website  : https://serialkey.top/                    │
# └────────────────────────────────────────────────────────────┘

# ── Color Codes ──
GREEN='\033[1;32m'
RED='\033[1;31m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
PURPLE='\033[1;35m'
CYAN='\033[1;36m'
NC='\033[0m'

# ── Hacker Typing Animation Function ──
hacker_type() {
    text="$1"
    delay="$2"
    for (( i=0; i<${#text}; i++ )); do
        echo -n -e "${GREEN}${text:$i:1}${NC}"
        sleep ${delay:-0.03}
    done
    echo
}

# ── Display Animated Banner ──
show_banner() {
    clear
    echo -e "${GREEN}"
    cat << "EOF"

    ███╗   ███╗ █████╗ ██████╗ ██╗  ██╗    ██████╗ ██████╗ ███████╗
    ████╗ ████║██╔══██╗██╔══██╗██║ ██╔╝    ██╔══██╗██╔══██╗██╔════╝
    ██╔████╔██║███████║██████╔╝█████╔╝     ██████╔╝██████╔╝█████╗  
    ██║╚██╔╝██║██╔══██║██╔══██╗██╔═██╗     ██╔══██╗██╔══██╗██╔══╝  
    ██║ ╚═╝ ██║██║  ██║██║  ██║██║  ██╗    ██████╔╝██║  ██║███████╗
    ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚══════╝
               𝕯𝖊𝖛𝖊𝖑𝖔𝖕𝖊𝖉 𝖇𝖞 𝖉𝖆𝖗𝖐𝖇𝖔𝖘𝖘𝖎𝖇𝖉 | 𝕾𝖊𝖈𝖚𝖗𝖎𝖙𝖞 𝕰𝖝𝖕𝖊𝖗𝖙
EOF
    echo -e "${NC}"
    echo -e "   ${YELLOW}⚡ Telegram: ${CYAN}https://t.me/darkvaiadmin${NC}"
    echo -e "   ${YELLOW}🌐 Website:  ${CYAN}https://serialkey.top/${NC}"
    echo -e "\n${PURPLE}Initializing darkboss1bd Terminal Environment...${NC}\n"
    sleep 1
}

# ── Main Installer Function ──
install_darkboss1bd() {
    show_banner
    
    # Step 1: Hacker Animation
    hacker_type ">>> Scanning System..." 0.05
    sleep 0.5
    hacker_type ">>> Applying darkboss1bd Branding..." 0.05
    sleep 0.5
    hacker_type ">>> Deploying Hacker Theme..." 0.05
    sleep 0.5

    # Step 2: Create .termux folder
    mkdir -p ~/.termux 2>/dev/null

    # Step 3: Set Hacker Color Scheme (Matrix Green)
    cat > ~/.termux/colors.properties << 'EOF'
foreground = #00ff00
background = #000000
cursor = #00ff00
color0 = #000000
color1 = #ff0000
color2 = #00ff00
color3 = #ffff00
color4 = #0000ff
color5 = #ff00ff
color6 = #00ffff
color7 = #ffffff
color8 = #555555
color9 = #ff5555
color10 = #55ff55
color11 = #ffff55
color12 = #5555ff
color13 = #ff55ff
color14 = #55ffff
color15 = #ffffff
EOF

    # Step 4: Set Custom Font (if available)
    if [ -d "/data/data/com.termux/files/usr/share/fonts" ]; then
        echo "font-family = monospace" > ~/.termux/font.ttf 2>/dev/null || true
    fi

    # Step 5: Customize Bash Prompt (PS1)
    grep -q "darkboss1bd" ~/.bashrc 2>/dev/null || cat >> ~/.bashrc << 'EOF'

# ── darkboss1bd Custom Prompt ──
export PS1='\[\033[1;32m\]darkboss1bd\[\033[1;31m\]@\[\033[1;32m\]terminal\[\033[1;37m\]~\[\033[1;32m\]\$ \[\033[0m\]'
EOF

    # Step 6: Add welcome message on every new terminal
    grep -q "WELCOME TO darkboss1bd" ~/.bashrc 2>/dev/null || cat >> ~/.bashrc << 'EOF'

# ── darkboss1bd Welcome Message ──
echo -e "\\033[1;32m"
echo "  ╔══════════════════════════════════════════════════════╗"
echo "  ║     WELCOME TO darkboss1bd HACKER TERMINAL           ║"
echo "  ║     Developed by Security Expert                     ║"
echo "  ║     Telegram: https://t.me/darkvaiadmin              ║"
echo "  ║     Website : https://serialkey.top/                 ║"
echo "  ╚══════════════════════════════════════════════════════╝"
echo -e "\\033[0m"
EOF

    # Step 7: Reload Settings
    source ~/.bashrc 2>/dev/null

    # Step 8: Apply Termux Settings (if API installed)
    if command -v termux-reload-settings > /dev/null 2>&1; then
        termux-reload-settings
        echo -e "${GREEN}[✓] Termux settings reloaded.${NC}"
    fi

    # Final Success Message
    echo -e "\n${GREEN}[★ SUCCESS ★]${NC} ${YELLOW}darkboss1bd Terminal Installed!${NC}"
    echo -e "${CYAN}Please restart Termux to see full effect.${NC}\n"
    echo -e "   ${BLUE}Connect with me:${NC}"
    echo -e "   └ Telegram: ${GREEN}https://t.me/darkvaiadmin${NC}"
    echo -e "   └ Website : ${GREEN}https://serialkey.top/${NC}\n"
    echo -e "${RED}⚠️  For Educational Purpose Only. Stay Legal.${NC}\n"
}

# ── Run Installer ──
install_darkboss1bd

# ── Optional: Auto restart suggestion
read -p "🔄 Want to restart Termux now? (y/N): " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo -e "${YELLOW}Restarting in 3 seconds...${NC}"
    sleep 3
    if command -v termux-open-url > /dev/null 2>&1; then
        termux-open-url "https://serialkey.top/"
    fi
    exit 0
fi
