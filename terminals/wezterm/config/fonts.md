# Fonts für die WezTerm-Config

Benötigte Schriften laut [fonts.lua](fonts.lua).

| Schrift | Wofür | Nötig? |
|---|---|---|
| **JetBrainsMono Nerd Font** | Hauptschrift und Icons (Prompt, Statusleiste, Dateiicons) | **Ja** |
| **Symbols Nerd Font Mono** | Zusätzliche Icon-Bereiche als Fallback | Empfohlen |
| **Noto Color Emoji** | Farbige Emojis | Optional (Windows hat Segoe UI Emoji als Fallback) |
| **DejaVu Sans Mono** | Box-Drawing und Unicode-Notfall-Fallback | Optional |

Die in `fonts.lua` auskommentierten Schriften (Monoid, OpenDyslexicM, Eirian) werden nicht benötigt.

## Downloads

- JetBrainsMono Nerd Font: https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip
- Symbols Nerd Font Mono: https://github.com/ryanoasis/nerd-fonts/releases/latest/download/NerdFontsSymbolsOnly.zip
- Noto Color Emoji: https://fonts.google.com/noto/specimen/Noto+Color+Emoji
- DejaVu Sans Mono: https://dejavu-fonts.github.io/

## Installation (Windows, ohne Admin-Rechte)

1. ZIP entpacken.
2. `.ttf`-Dateien markieren, Rechtsklick, **Installieren** (nur für den aktuellen Benutzer, nicht „Für alle Benutzer").
3. Bei JetBrainsMono reichen `JetBrainsMonoNerdFont-Regular.ttf` und optional Bold/Italic. Die Varianten mit `Mono` oder `Propo` im Namen sind nicht nötig.
4. WezTerm neu starten.

## Automatik

`font_utils.ensure_jetbrains_font()` (`utils/font.lua`) versucht beim Start, JetBrainsMono per PowerShell von GitHub zu laden und zu installieren. Auf Firmengeräten scheitert das oft an Execution Policy oder Proxy, dann die Schrift von Hand installieren.

## Prüfen

```powershell
wezterm ls-fonts --list-system | Select-String "JetBrainsMono|Symbols Nerd"
```
