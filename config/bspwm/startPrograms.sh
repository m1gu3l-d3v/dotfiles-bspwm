# Color bspwm
. "${HOME}/.cache/colorschemes/color.sh"
bspc config normal_border_color "$colormain1"
bspc config active_border_color "$colormain1"
bspc config focused_border_color "$color15"
bspc config presel_feedback_color "$colormain1"

# Clipboard
#if ! pgrep -x copyq > /dev/null; then copyq & fi

# Flameshot
#if ! pgrep -x flameshot > /dev/null; then flameshot & fi

# Dunst
if ! pgrep -x dunst > /dev/null; then dunst & fi

# Picom
#pgrep -x picom > /dev/null || (picom &)
if ! pgrep -x picom > /dev/null; then picom & fi

# Polkit
#/usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1 & # for Debian 12
#/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 & # for Arch
if ! pgrep -af polkit-gnome-authentication-agent-1 > /dev/null; then /usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1 & fi

# thunar daemon
#if ! pgrep -af thunar > /dev/null; then thunar --daemon & fi
thunar --daemon &

# nitrogen
nitrogen --restore &

# Pywal Reload
#wal -Rn &
#wal -Rntq &

# Colors
~/.config/colorschemes/script

# Polybar initialization
if ! pgrep -f polybar > /dev/null; then "$HOME/.config/polybar/launch.sh" & fi

# Cursor
xsetroot -cursor_name left_ptr
