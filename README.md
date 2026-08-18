# Bar Divider — Omarchy Bar Widget

A lightweight, customizable visual separator widget for the [Omarchy](https://omarchy.org/) status bar.

Allows you to place subtle separator lines, vertical pipes, or centered dots between status bar widgets to create clean, organized layouts.

---

## Requirements & Prerequisites

Before installing the widget, ensure your system has:

1. **Omarchy Linux** with Quickshell status bar (`omarchy plugin` / `omarchy bar` CLI available).

---

## Installation

### Option 1: Using `omarchy plugin` (Recommended)

```bash
omarchy plugin add https://github.com/Rizmi/omarchy-divider-plugin.git --enable
```

### Option 2: Manual Installation

1. Clone the repository into your Omarchy plugins directory:
   ```bash
   git clone https://github.com/Rizmi/omarchy-divider-plugin.git \
     ~/.config/omarchy/plugins/io.github.rizmi.divider
   ```

2. Validate and enable the plugin on your status bar:
   ```bash
   omarchy plugin validate ~/.config/omarchy/plugins/io.github.rizmi.divider
   omarchy plugin enable io.github.rizmi.divider
   ```

---

## Removal

```bash
omarchy plugin disable io.github.rizmi.divider
rm -rf ~/.config/omarchy/plugins/io.github.rizmi.divider
omarchy restart shell
```

---

## Configuration & Settings

### Enable in `~/.config/omarchy/shell.json`

Add `io.github.rizmi.divider` to your preferred bar layout section (`left`, `center`, or `right`):

```json
{
  "bar": {
    "layout": {
      "center": [
        {
          "id": "omarchy.clock"
        },
        {
          "id": "io.github.rizmi.divider",
          "style": "line",
          "margin": 4
        },
        {
          "id": "io.github.salemsayed.omaprayers"
        }
      ]
    }
  }
}
```

### Available Settings

| Key | Type | Default | Range / Options | Description |
|---|---|---|---|---|
| `style` | `enum` | `"line"` | `"line"`, `"pipe"`, `"dot"` | Visual divider style |
| `margin` | `integer` | `4` | `0` to `30` | Side margin in pixels |

#### Setting via CLI:

```bash
# Change divider style
omarchy bar set io.github.rizmi.divider style dot

# Change side margin
omarchy bar set io.github.rizmi.divider margin 6
```

---

## License

MIT License © 2026 Omarchy Community
