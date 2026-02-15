# {{project-name}}

Strict Rust `cargo-generate` template.

## Includes

- Strict lints (`unsafe_code = forbid`, clippy denies)
- Small release profile
- CI: fmt, clippy, test, audit, deny, udeps, geiger, coverage + Pages
- CD: crates.io publish + optional release binary upload
- Make targets: `all`, `run`, `lint`, `test`, `cov`, `sec`

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
```

## Required

- `CARGO_REGISTRY_TOKEN` secret
- Set `release_binary = true` during generation to include binary release steps
