#!/bin/bash

set -e

export "$(xargs <.env)"

github-release upload \
    --user rousan \
    --repo rust-cli-test \
    --tag "v$1" \
    --name "rust-cli-test-v$1-x86_64-apple-darwin.tar.gz" \
    --file "dist/rust-cli-test-v$1-x86_64-apple-darwin.tar.gz"

github-release upload \
    --user rousan \
    --repo rust-cli-test \
    --tag "v$1" \
    --name "rust-cli-test-v$1-x86_64-unknown-linux-gnu.tar.gz" \
    --file "dist/rust-cli-test-v$1-x86_64-unknown-linux-gnu.tar.gz"

github-release upload \
    --user rousan \
    --repo rust-cli-test \
    --tag "v$1" \
    --name "rust-cli-test-v$1-x86_64-pc-windows-gnu.zip" \
    --file "dist/rust-cli-test-v$1-x86_64-pc-windows-gnu.zip"

