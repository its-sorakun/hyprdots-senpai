#!/bin/bash
# Fetch media player status, handling errors gracefully

# Check if playerctl is playing or paused
player_status=$(playerctl status 2>/dev/null)

if [ "$player_status" = "Playing" ] || [ "$player_status" = "Paused" ]; then
    # Fetch title and artist, cut to 45 chars to prevent overflow
    playerctl metadata --format '{{title}}   {{artist}}' | cut -c 1-45
else
    # Output distinct fallback text if nothing is playing
    echo "󰎆 No media playing"
fi
