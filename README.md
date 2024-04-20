# Josh H's Cookiecutter Templates

These are my cookiecutter templates. I use these to create new projects.

## Install `Templatize` Script

```bash
bash <(curl -sSfL https://raw.githubusercontent.com/jfhbrook/templates/main/install.sh)
```

## Available Templates

### pypackage

A generic Python package. It supports Read The Docs, GitHub Actions, tox, and
Jupyter. It uses [pip-tools](https://github.com/jazzband/pip-tools) to manage
dependencies and glues everything together with
[just](https://github.com/casey/just). It does formatting with black, linting
with flake8, type checking with pyright, and testing with pytest.

This template is the most versatile and mature out of all of them.

### tspackage

A generic TypeScript package. It supports Read The Docs and GitHub Actions.
It uses prettier for formatting, eslint for linting, and node-tap for testing.

### nestjs

A simple NestJS app. It's similar to the standard NestJS template. However,
it uses node-tap instead of jest.

### psmodule

A PowerShell module template. It's sparse compared to the others, but includes
PSScriptAnalyzer and Pester support.

### flaskapp

A simple Flask app. It's loosely based on the `pypackage` template, and
includes support for vite. It does not, however, currently support databases.

This template is by far the least mature, and a work in progress.

## License

MIT. See `LICENSE` for details.
