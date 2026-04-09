# homebrew-tokentracker

Homebrew tap for [TokenTracker](https://github.com/mm7894215/TokenTracker) — a local-first AI token usage tracker for Claude Code, Codex, Cursor, Gemini, and other AI CLIs.

## Install

### macOS menu bar app (DMG)

```bash
brew install --cask mm7894215/tokentracker/tokentracker
```

### CLI only

```bash
brew install mm7894215/tokentracker/tokentracker
```

### Tap once, install by short name

```bash
brew tap mm7894215/tokentracker
brew install --cask tokentracker      # menu bar app
brew install tokentracker             # CLI
```

## Upgrade

```bash
brew upgrade --cask tokentracker
brew upgrade tokentracker
```

## Uninstall

```bash
brew uninstall --cask --zap tokentracker  # also removes app data and config
brew uninstall tokentracker
```

## Automatic updates

This tap is updated automatically by [`.github/workflows/auto-update.yml`](.github/workflows/auto-update.yml):

- Polls GitHub Releases and npm registry **hourly** for new versions
- Can also be triggered instantly via `repository_dispatch` from the main [TokenTracker](https://github.com/mm7894215/TokenTracker) repo's release workflows
- Bumps `version` + `sha256` in `Casks/tokentracker.rb` and `Formula/tokentracker.rb` automatically

No manual PR required on every release.
