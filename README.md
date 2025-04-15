## 🚀 Prerequisites

Before you start, make sure the following tools are installed:

- **[Poetry](https://python-poetry.org/docs/#installation)** – Dependency and environment management
- **[Cookiecutter](https://cookiecutter.readthedocs.io/en/stable/installation.html)** – For project generation
- **Python** (managed via `pyenv` recommended)

You can install them with:

```bash
# Install pyenv (if not already installed)
brew install pyenv

# Install a version of Python
pyenv install 3.13.2
pyenv local 3.13.2

# Install Poetry
brew install poetry
# Install Cookiecutter
pip install cookiecutter
```

---

## 📦 Generating a New Project

```bash
cookiecutter /path/to/cookiecutter-python
cd your-new-project
./bootstrap.sh
```

This will:
- Initialise a Git repository
- Install dependencies with Poetry
- Set up Git hooks via pre-commit
