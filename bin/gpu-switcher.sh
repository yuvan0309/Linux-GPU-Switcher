#!/bin/bash

ICON="$HOME/.local/share/icons/nvidia-icon.jpg"

MODE=$(zenity --forms \
  --title="EnvyControl" \
  --window-icon="$ICON" \
  --text="<b>🔧 Select GPU Mode:</b>\n\n<b>0</b> → Hybrid (default)\n<b>1</b> → NVIDIA\n<b>2</b> → Integrated\n\n<i>Leave blank or type 0 for Hybrid.</i>" \
  --add-entry="Enter mode (0/1/2)" \
  --width=350)

# If user clicked Cancel, exit immediately
if [ $? -ne 0 ]; then
  exit
fi

case "$MODE" in
  1)
    if zenity --question --text="Switch to NVIDIA mode and reboot?" --window-icon="$ICON"; then
      pkexec envycontrol -s nvidia && reboot
    fi
    ;;
  2)
    if zenity --question --text="Switch to Integrated mode and reboot?" --window-icon="$ICON"; then
      pkexec envycontrol -s integrated && reboot
    fi
    ;;
  *)
    if zenity --question --text="Switch to Hybrid mode and reboot?" --window-icon="$ICON"; then
      pkexec envycontrol -s hybrid && reboot
    fi
    ;;
esac
