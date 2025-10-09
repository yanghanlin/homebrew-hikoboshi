# Copilot Instructions for homebrew-hikoboshi

## Repository Overview

This is a Homebrew tap repository that contains personal applications. It follows the standard Homebrew tap conventions and structure.

## Repository Structure

- `Formula/` - Contains Homebrew formula files (Ruby)
- `.github/workflows/` - CI/CD workflows for testing and publishing
- `README.md` - Repository documentation
- `LICENSE` - MIT license

## Homebrew Formula Conventions

### File Location
- All formula files must be placed in the `Formula/` directory
- Formula files should be named with lowercase and `.rb` extension (e.g., `loginto.rb`)

### Formula Structure
- Class name should be CamelCase (e.g., `class Loginto < Formula`)
- Must inherit from `Formula` class
- Required fields:
  - `desc` - Short description of the application
  - `homepage` - Project homepage URL
  - `version` - Version string
  - `url` - Download URL for source/binary
  - `sha256` - Checksum for verification

### Platform-Specific Downloads
Use platform blocks for different architectures:
```ruby
on_macos do
  on_intel do
    url "..."
    sha256 "..."
  end
  on_arm do
    url "..."
    sha256 "..."
  end
end

on_linux do
  on_intel do
    url "..."
    sha256 "..."
  end
  on_arm do
    url "..."
    sha256 "..."
  end
end
```

### Bottles
- Use `bottle do` block to specify pre-compiled bottles
- Include `root_url` pointing to GitHub releases
- Specify checksums for each platform

### Installation
- Implement `install` method
- Use `bin.install` for executables
- Use `prefix.install` for other files

### Testing
- Implement `test do` block
- Test should verify the formula installs correctly
- Use `system` to run basic commands

## Testing and CI/CD

### Local Testing
```bash
brew test-bot --only-tap-syntax
brew test-bot --only-formulae
```

### CI/CD
- Uses `brew test-bot` for automated testing
- Tests run on both Ubuntu and macOS
- Pull requests trigger formula validation
- Successful builds create bottle artifacts

## Code Style

### Ruby Style
- Follow Homebrew's Ruby style guide
- Use 2 spaces for indentation
- Comment format: `# TODO:` or `# FIXME:` for notes

### Comments
- Use `TODO:` for future improvements
- Use `FIXME:` for known issues that need resolution
- Include context in comments explaining why something is needed

## Known Issues and Patterns

### Current FIXMEs in the codebase:
1. Livecheck URL symbol false positive (Formula/loginto.rb)
2. Working directory issues during installation (Formula/loginto.rb)
3. Repository naming constraint for test-bot (README.md)

### Patterns to Follow:
- Binary distributions use `.tar.zst` format
- Versions follow semantic versioning with git commit suffix (e.g., `0.1-9.ead9140`)
- All downloads are from `static.tree-diagram.site` domain

## References

- [Homebrew Documentation](https://docs.brew.sh)
- [Homebrew Formula Cookbook](https://docs.brew.sh/Formula-Cookbook)
- [Homebrew Test Bot](https://github.com/Homebrew/homebrew-test-bot)
