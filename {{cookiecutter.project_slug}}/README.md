# {{ cookiecutter.project_name }}
Author: {{ cookiecutter.author_name }} <{{ cookiecutter.email }}>


---

## 🚀 Prerequisites

Before you start, make sure the following tools are installed:

- **[Poetry](https://python-poetry.org/docs/#installation)** – Dependency and environment management

---

## 🛠 Makefile Commands

| Command           | Description                                 |
|-------------------|---------------------------------------------|
| `make install`    | Install dependencies via Poetry             |
| `make test`       | Run unit tests using `pytest`               |
| `make lint`       | Run linters: `flake8`, `pydocstyle`         |
| `make format`     | Format code using `black` and `isort`       |
| `make typecheck`  | Check static types with `mypy`              |
| `make security`   | Scan source code using `bandit`             |
| `make check`      | Run all checks: lint, format, types, security |

---

## 🔍 Manual Commands

If needed, you can run tools individually via Poetry:

```bash
poetry run pre-commit run --all-files   # Run pre-commit hooks manually
poetry run pytest                       # Run tests
poetry run mypy src/                    # Type checks
```

---

## 🧪 Project Structure

```
your-project/
├── {{ cookiecutter.project_slug }}/         # Python source package
│   └── __init__.py
├── tests/                                   # Unit tests
├── .pre-commit-config.yaml                  # Pre-commit hook config
├── pyproject.toml                           # Poetry project config
├── Makefile
├── bootstrap.sh                             # Bootstrap script
└── README.md
```

---

## 🧹 Code Standards

This template enforces the following code quality tools:

- **black**: code formatter
- **isort**: import sorter
- **flake8**: general linting
- **flake8-bugbear**: for common bugs and anti-patterns
- **flake8-docstrings**: enforce docstrings
- **mypy**: static typing
- **pydocstyle**: docstring format checks
- **bandit**: basic security scanning

These run automatically on each commit via `pre-commit`.

---

# ✅ Ensuring You're Using Poetry's Virtual Environment

This guide helps confirm you're using the **Poetry-managed virtual environment** to run your Python code.

---

## 1. Activate the Virtual Environment (Optional but Useful)

Poetry creates a virtual environment for your project. To enter it:

```bash
poetry shell
```

This opens a new shell where:

- `python`, `pytest`, etc. use Poetry's environment.
- `which python` confirms it's not your global Python.

To exit:

```bash
exit
```

---

## 2. Run Code Inside the Poetry Environment

Even without `poetry shell`, you can run commands inside the Poetry environment using:

```bash
poetry run python script.py
poetry run pytest
poetry run black .
```

This ensures the Poetry-managed Python is used.

---

## 3. Confirm Poetry's Python Is Being Used

Run:

```bash
poetry run which python
```

Output should look like:

```
/Users/you/Library/Caches/pypoetry/virtualenvs/your-project-name-abc123/bin/python
```

---

## 4. Using `pyenv` + `poetry` Together

If you manage Python versions with `pyenv`, you can configure Poetry to use a specific one:

```bash
pyenv install 3.13.2
pyenv local 3.13.2
poetry env use $(pyenv which python)
```

This links Poetry's virtual environment to the `pyenv`-managed version.

---

## 5. One-liner Check

From within your project directory:

```bash
poetry run python -c "import sys; print(sys.executable)"
```

This prints the path to the Python binary used by Poetry, confirming it's using the virtualenv.

---

## ✅ You're ready!

Happy coding! 
