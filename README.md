# homebrew-tap

Homebrew tap for Rask Australia's internal tools.

## Install

```bash
brew install benchristie02/tap/rask
```

That's a shorthand for:

```bash
brew tap benchristie02/tap
brew install rask
```

## Formulae

| Name | Description                                    | Source repo                                              |
| ---- | ---------------------------------------------- | -------------------------------------------------------- |
| rask | CLI for YouTube chapter generation, etc.       | [benchristie02/rask-cli](https://github.com/benchristie02/rask-cli) |

## Updating a formula after a CLI release

1. The source repo (e.g. `rask-cli`) tags and publishes a GitHub release.
2. Compute the tarball sha256:
   ```bash
   curl -sL https://github.com/benchristie02/rask-cli/archive/refs/tags/v0.X.Y.tar.gz | shasum -a 256
   ```
3. Update `Formula/<name>.rb`:
   - `url` — point at the new tag tarball
   - `sha256` — the value from step 2
   - `version` — the new version string
4. Commit, push. Users `brew update && brew upgrade <name>` to receive it.

## License

Formulae here are MIT-licensed (matching their source repos).
