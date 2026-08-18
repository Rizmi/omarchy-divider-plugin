# Bar Divider — Omarchy Bar Widget

A lightweight, customizable visual separator widget for the [Omarchy](https://omarchy.org/) status bar.

Allows you to place subtle separator lines, vertical pipes, or centered dots between status bar widgets to create clean, organized layouts.

---

## Requirements & Prerequisites

Before installing the widget, ensure your system has:

1. **Omarchy Linux** with Quickshell status bar (`omarchy plugin` / `omarchy bar` CLI available).

---

<p align="center">
  <img width="348" height="75" alt="Bar Divider Preview 1" src="https://imglink.cc/cdn/rH0P2VlOTr.png" />
  &nbsp;&nbsp;
  <img width="348" height="75" alt="Bar Divider Preview 2" src="https://imglink.cc/cdn/OkDCzi5s92.png" />
</p>

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

2. Validate and enable the plugin:
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

## Configuration & Usage

Add `io.github.rizmi.divider` anywhere in your bar layout (`left`, `center`, or `right`) in `~/.config/omarchy/shell.json`.

Because multiple instances are supported (`allowMultiple: true`), you can insert as many dividers as you want between widgets:

```json
{
  "bar": {
    "layout": {
      "center": [
        {
          "id": "io.github.salemsayed.omaprayers"
        },
        {
          "id": "io.github.rizmi.divider",
          "style": "line",
          "margin": 4
        },
        {
          "id": "omarchy.clock"
        },
        {
          "id": "io.github.rizmi.divider",
          "style": "line",
          "margin": 4
        },
        {
          "id": "poppy.next-event"
        }
      ]
    }
  }
}
```

---

## Available Settings

Each divider instance can have its own individual style and margin settings:

| Key | Type | Default | Options / Range | Description |
|---|---|---|---|---|
| `style` | `enum` | `"line"` | `"line"`, `"pipe"`, `"dot"` | Visual divider style |
| `margin` | `integer` | `4` | `0` to `30` | Side margin in pixels |

### Styles

- **`line`** (default): Minimal vertical line segment with subtle opacity.
- **`pipe`**: Classic vertical terminal pipe (`│`) separator.
- **`dot`**: Small centered geometric dot separator.

---

## License

MIT License © 2026 Omarchy Community
