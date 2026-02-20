# {{project-name}}

![coverage](https://img.shields.io/endpoint?url=https://{{gh_username}}.github.io/{{project-name}}/coverage/badge.json)

Strict Rust `cargo-generate` template.

## Includes

- Strict lints (`unsafe_code = forbid`, clippy denies)
- Small release profile
- CI: fmt, clippy, test, audit, deny, udeps, geiger, coverage + Pages
- CD: `cd-publish` + optional `cd-binary` workflow
- `just` recipes: `all`, `run`, `lint`, `test`, `cov`, `sec`

## Usage

```bash
cargo generate --git <this-repo-url>
```

## Install Tools

```bash
rustup component add rustfmt clippy llvm-tools-preview
rustup toolchain install nightly
cargo install cargo-binstall
cargo binstall -y cargo-edit cargo-llvm-cov cargo-audit cargo-deny cargo-geiger
cargo +nightly binstall -y cargo-udeps
cargo binstall -y just
```

## Required

- `CARGO_REGISTRY_TOKEN` secret
- Set `release_binary = true` to include the `cd-binary` workflow
