#!/usr/bin/env bash
set -euo pipefail

QUARTO_VERSION="1.11.9"

mkdir -p "$HOME/.local"

# Install Quarto
echo "Installing Quarto ${QUARTO_VERSION}..."

curl -fsSL \
  "https://github.com/quarto-dev/quarto-cli/releases/download/v${QUARTO_VERSION}/quarto-${QUARTO_VERSION}-linux-amd64.tar.gz" \
  -o /tmp/quarto.tar.gz

tar -xzf /tmp/quarto.tar.gz -C "$HOME/.local"

export PATH="$HOME/.local/quarto-${QUARTO_VERSION}/bin:$PATH"

export QUARTO_SKIP_DATASET_DOWNLOAD=true

# Check Quarto version
echo "Quarto version: $(quarto --version)"

# Install Python dependencies
echo "Installing Python dependencies..."

python3 -m pip install --upgrade pip
python3 -m pip install pyyaml

# Render documentation without executing code
quarto render \
    --profile html \
    --no-execute \
    --output-dir _site
