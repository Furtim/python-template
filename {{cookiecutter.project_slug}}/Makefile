.PHONY: help install format lint typecheck security test check all git

help:
	@echo "Available targets:"
	@echo "  install     - Install dependencies with Poetry"
	@echo "  format      - Run code formatters (black, isort)"
	@echo "  lint        - Run linters (flake8)"
	@echo "  typecheck   - Run mypy static type checks"
	@echo "  security    - Run bandit security checks"
	@echo "  test        - Run tests with pytest"
	@echo "  check       - Run all checks (format, lint, mypy, test, security)"
	@echo "  all         - Install, setup, and check everything"

install:
	poetry install

format:
	poetry run isort src/mot
	poetry run black src/mot

lint:
	poetry run flake8 src/mot

typecheck:
	poetry run mypy src/mot

security:
	poetry run bandit -ll -q -r src/mot

test:
	poetry run pytest tests

check: format lint typecheck test security

all: install check

git:
	poetry run git $(filter-out $@,$(MAKECMDGOALS))

# Hack to prevent "No rule to make target ..." errors for extra args
%:
	@:
