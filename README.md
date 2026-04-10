# homebrew-tokentracker

Homebrew tap for [TokenTracker](https://github.com/mm7894215/TokenTracker) — a local-first AI token usage tracker for Claude Code, Codex, Cursor, Gemini, and other AI CLIs.

## Install

```bash
# macOS menu bar app (DMG)
brew install --cask mm7894215/tokentracker/tokentracker

# CLI only
brew install mm7894215/tokentracker/tokentracker
```

## Upgrade

```bash
brew upgrade --cask mm7894215/tokentracker/tokentracker
brew upgrade mm7894215/tokentracker/tokentracker
```

## Uninstall

```bash
brew uninstall --cask --zap mm7894215/tokentracker/tokentracker
brew uninstall mm7894215/tokentracker/tokentracker
```

## Automatic updates

This tap is updated automatically by [`.github/workflows/auto-update.yml`](.github/workflows/auto-update.yml):

- Polls GitHub Releases and npm registry **hourly** for new versions
- Can also be triggered instantly via `repository_dispatch` from the main [TokenTracker](https://github.com/mm7894215/TokenTracker) repo's release workflows
- Bumps `version` + `sha256` in `Casks/tokentracker.rb` and `Formula/tokentracker.rb` automatically

No manual PR required on every release.
