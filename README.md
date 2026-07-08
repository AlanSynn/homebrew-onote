# homebrew-onote

Homebrew tap for [onote](https://github.com/AlanSynn/onote) — a terminal-native,
local-first, Obsidian-compatible Markdown vault client.

## Install

```bash
brew tap alansynn/onote
brew install onote
```

Then configure your vault at `~/.config/onote/config.toml` and run `onote`.

## What this tap contains

- `Formula/onote.rb` — builds onote from a released source tarball via `cargo`.
  The formula tracks `Cargo.toml`'s version; each tagged release updates the
  `url`/`sha256`.

This tap is third-party (not Homebrew/homebrew-core). Formula issues belong here;
onote app issues belong in the [main repo](https://github.com/AlanSynn/onote).
