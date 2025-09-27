#!/bin/bash
WAYBAR_PID=$(pgrep waybar)

# Función para reiniciar Waybar
restart_waybar() {
    if [[ -n "$WAYBAR_PID" ]]; then
        kill -SIGUSR2 "$WAYBAR_PID"
    else
        waybar &
    fi
}

# Inicialmente lanza Waybar
restart_waybar

# Observa cambios en la carpeta de config
while inotifywait -e modify,create,delete -r ~/.config/waybar; do
    echo "Waybar config changed, reloading..."
    WAYBAR_PID=$(pgrep waybar)
    restart_waybar
done
