#!/bin/zsh
# Bootstrap the project after Cookiecutter generation

echo "🔧 Initialising Git repository..."
git init

echo "📦 Installing dependencies with Poetry..."
make install

echo "✅ Installing pre-commit hooks..."
poetry run pre-commit install

echo "🚀 Bootstrapping complete!"