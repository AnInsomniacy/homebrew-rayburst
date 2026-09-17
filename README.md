# Homebrew Tap for Rayburst

Official [Homebrew](https://brew.sh) tap for [Rayburst](https://rayburst.pages.dev/) — a full-featured download manager built with Tauri.

## Installation

```bash
brew tap AnInsomniacy/rayburst
brew install --cask rayburst
xattr -cr /Applications/Rayburst.app  # remove quarantine
```

> **Note:** The macOS app is ad-hoc signed and not notarized. The `xattr` command removes the quarantine flag that macOS applies to downloaded apps.

## Upgrade

```bash
brew upgrade --cask --greedy rayburst
```

Rayburst also includes a built-in auto-updater powered by [Tauri](https://tauri.app), so in-app updates will work independently of Homebrew.

## Uninstall

```bash
# Standard uninstall
brew uninstall --cask rayburst

# Full uninstall (removes app data, caches, and logs)
brew uninstall --zap --cask rayburst
```

## How It Works

This tap is **automatically updated** by CI whenever a new stable release is published on the [main repository](https://github.com/AnInsomniacy/rayburst). The Cask definition supports both Apple Silicon and Intel Macs.

| Architecture | Artifact |
|-------------|----------|
| Apple Silicon (arm64) | `Rayburst_aarch64.app.tar.gz` |
| Intel (x86_64) | `Rayburst_x64.app.tar.gz` |

## Issues

For application issues, please file them in the [main repository](https://github.com/AnInsomniacy/rayburst/issues).
For tap-specific issues (installation failures, checksum mismatches), please open an issue here.

## License

[MIT](https://opensource.org/licenses/MIT)
