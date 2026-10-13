# homebrew-tap

Homebrew tap for [macSCP-Revived](https://github.com/onlymykazari/macSCP-Revived) — native macOS SFTP/S3 client with SSH terminal.

## Install

```bash
brew tap onlymykazari/tap
brew install --cask macscp-revived
```

Or in one command:

```bash
brew install --cask onlymykazari/tap/macscp-revived
```

## Notes

- Requires macOS 15.0 (Sequoia) or later.
- Builds are ad-hoc signed (no Apple Developer ID yet). If macOS blocks the first launch, right-click the app → **Open**, or run:
  ```bash
  xattr -dr com.apple.quarantine /Applications/macSCP-Revived.app
  ```
