# David's Python dev template

## 🚀 Prerequisites

Before you start, make sure the following tools are installed:

- **[Poetry](https://python-poetry.org/docs/#installation)** – Dependency and environment management
- **[Cookiecutter](https://cookiecutter.readthedocs.io/en/stable/installation.html)** – For project generation
- **Python** (managed via `pyenv` recommended)

You can install them with:

```bash
# Install Poetry and Cookiecutter
brew install poetry cookiecutter
```

---

## 📦 Generating a New Project

```bash
cookiecutter https://github.com/Furtim/python-template
cd your-new-project
./bootstrap.sh
```

This will:
- Initialise a Git repository
- Install dependencies with Poetry
- Set up Git hooks via pre-commit
