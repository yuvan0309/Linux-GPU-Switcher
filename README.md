# GPU Switcher  (for EnvyControl)

A simple graphical GPU switcher script built for **Linux hybrid GPU laptops**, powered by `zenity` and `envycontrol`.

Designed with Arch Linux in mind — because real power users roll with Arch 🐧. 

---
## ✨ Features

* Switch between:

  * **Hybrid** (default)
  * **NVIDIA**
  * **Integrated (Intel/AMD)**
* Zenity-powered **GUI menu** for mode selection
* Confirmation prompt before rebooting
* Root elevation using `pkexec`
* Works seamlessly with **EnvyControl** under GNOME

---

## 💽 Demo

![GPU Switcher UI](demo.png)

---

## ⚙️ Installation

1. **Dependencies**:

   ```bash
   sudo pacman -S envycontrol zenity polkit
   ```

2. **Copy the script**:

   ```bash
   mkdir -p ~/.local/bin
   cp gpu-switcher.sh ~/.local/bin/
   chmod +x ~/.local/bin/gpu-switcher.sh
   ```

3. **(Optional)**: Map it to a keyboard shortcut (e.g., `Super + G`) in GNOME Settings → Keyboard → Custom Shortcuts.

---

## 🚀 Usage

Just run:

```bash
~/.local/bin/gpu-switcher.sh
```

Or bind it to a hotkey for quick switching.

---

## 🧠 Notes

* If "Cancel" is pressed, the script **will not switch** and will exit silently.
* Reboot is required after mode switch (by EnvyControl design).
* Tested on **Arch Linux (kernel 6.x)** with GNOME + Wayland/X11.


---

## 🦘 Author

Made by  just another Arch user making life easier.
