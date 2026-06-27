# homebrew-sct is deprecated

This tap has moved to the shared Pacharanero Homebrew tap:

<https://github.com/pacharanero/homebrew-tap>

New installs should use:

```bash
brew tap pacharanero/tap
brew install sct
```

Existing users of the old tap can migrate with:

```bash
brew tap pacharanero/tap
brew reinstall pacharanero/tap/sct
brew untap pacharanero/sct
```

The formula is now maintained in `pacharanero/homebrew-tap` as `Formula/sct.rb`.
This repository is kept only as a pointer for existing users and can be archived.
