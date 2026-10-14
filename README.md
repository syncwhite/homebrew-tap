# Syncwhite Homebrew Tap

Homebrew casks for apps by [Syncwhite](https://syncwhite.com).

## Katharos

[Katharos](https://katharos.syncwhite.com) cleans up your Mac, shows where your space goes,
uninstalls apps completely and runs maintenance.

```bash
brew install --cask syncwhite/tap/katharos
```

Katharos updates itself with Sparkle, so `brew upgrade` leaves it alone. To remove it along with its
logs, caches and preferences:

```bash
brew uninstall --zap --cask katharos
```

The casks here are updated automatically when a new version is published.
