# homebrew-sct

Homebrew tap for [`sct`](https://github.com/pacharanero/sct) — the local-first
SNOMED CT toolchain.

## Install

```bash
brew tap pacharanero/sct
brew install sct
```

## Update

```bash
brew update
brew upgrade sct
```

## Uninstall

```bash
brew uninstall sct
brew untap pacharanero/sct
```

## Supported platforms

| Platform | Architecture |
|---|---|
| macOS | Apple Silicon (aarch64) |
| macOS | Intel (x86_64) |
| Linux | x86_64 |
| Linux | aarch64 |

Windows users: see [`scoop-sct`](https://github.com/pacharanero/scoop-sct)
for the Scoop bucket, or download the `.zip` directly from the
[GitHub releases page](https://github.com/pacharanero/sct/releases).

## Formula updates

The `Formula/sct.rb` file in this repo is updated automatically by the
[release workflow](https://github.com/pacharanero/sct/actions) in the main
`sct` repository whenever a new `v*` tag is pushed. No manual edits needed.
