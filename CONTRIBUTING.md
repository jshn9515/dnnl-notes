# Contributing

Thank you for your interest in contributing to **dnnl-notes**.

We welcome corrections, clearer explanations, improved code examples, new topics, and other contributions that help improve these notes.

Please follow the guidelines below before submitting a Pull Request.

## 1. Set up the development environment

This project is maintained primarily in [Quarto Markdown](https://quarto.org/) (`.qmd`) format and uses [uv](https://docs.astral.sh/uv/) to manage Python dependencies and virtual environments.

First, install Quarto and uv by following their official installation instructions:

- [Quarto Installation](https://quarto.org/docs/get-started/)
- [uv Installation](https://docs.astral.sh/uv/getting-started/installation/)

Then, clone the repository:

```bash
git clone https://github.com/jshn9515/dnnl-notes.git
cd dnnl-notes
```

Install the project dependencies:

```bash
uv sync --locked --all-extras
```

This creates or updates the `.venv` environment and installs the dependencies specified in `pyproject.toml` and `uv.lock`.

If you are using Visual Studio Code, consider installing the [Quarto extension](https://marketplace.visualstudio.com/items?itemName=quarto.quarto) for better editing, previewing, and rendering support.

## 2. Install pre-commit hooks

The project uses [pre-commit](https://pre-commit.com/) to automate code quality checks and maintain consistent formatting.

Install pre-commit and configure the Git hooks:

```bash
uv tool install pre-commit
pre-commit install
```

You can also run all hooks manually:

```bash
pre-commit run --all-files
```

The configured hooks run automatically before each commit. Please ensure that all checks pass before submitting a Pull Request.

## 3. Install dnnlpy

Some notes and code examples depend on [dnnlpy](https://github.com/jshn9515/dnnlpy), which provides reusable utilities and custom implementations for deep learning and related topics.

Install the published package into the project environment:

```bash
uv pip install dnnlpy
```

If you need the latest development version directly from GitHub, use:

```bash
uv pip install git+https://github.com/jshn9515/dnnlpy.git
```

Please ensure that `dnnlpy` is available in the project environment before executing code examples or rendering pages that depend on it.

## 4. Edit the Quarto Markdown files

Documentation content is maintained primarily in `.qmd` files. Please modify the corresponding source files rather than generated HTML, PDF, or notebook outputs.

When editing the notes, please follow these guidelines:

- Follow the existing writing style, terminology, and project structure.
- Keep explanations clear, concise, and technically accurate.
- Use consistent Markdown formatting and heading structures.
- Ensure that code examples are readable, reproducible, and properly formatted.
- Verify mathematical formulas, derivations, and technical explanations carefully.
- Avoid unrelated changes to existing content.

For substantial additions or revisions, consider opening an Issue first to discuss the proposed changes.

## 5. Format and lint your code

The project uses [Ruff](https://docs.astral.sh/ruff/) for Python formatting and linting.

Format the code:

```bash
uv run ruff format .
```

Check for linting issues:

```bash
uv run ruff check .
```

Automatically fix supported linting issues:

```bash
uv run ruff check . --fix
```

If Ruff is not included in your project environment, you can install it separately:

```bash
uv tool install ruff
```

Please ensure that formatting and linting checks pass before submitting a Pull Request.

## 6. Render and validate your changes

Before submitting a Pull Request, you **must** render the modified content locally and verify that it works correctly.

Render the HTML documentation:

```bash
quarto render --profile html
```

If you need to verify that a `.qmd` file can be converted into a Jupyter notebook, use:

```bash
quarto convert path/to/file.qmd
```

After rendering, please verify that:

- The documentation builds successfully without errors.
- Code examples execute correctly where applicable.
- Mathematical formulas, figures, and tables display correctly.
- Internal and external links work as expected.
- Headings, formatting, and page structure remain consistent.
- Notebook conversion works when relevant to the modified content.

Please do not submit a Pull Request without verifying the local rendering results.

## 7. Sign your commits

This repository requires verified commits.

Before submitting a Pull Request, ensure that your Git commits are signed using a signing method supported by GitHub, such as GPG or SSH.

For setup instructions, refer to [GitHub&#39;s commit signature verification documentation](https://docs.github.com/en/authentication/managing-commit-signature-verification).

Your commits should display the **Verified** badge on GitHub.

## 8. Submit a Pull Request

Once your changes are ready, open a Pull Request against the `main` branch.

Please ensure that:

- Your Pull Request has a clear and descriptive title.
- The description summarizes the changes and their motivation.
- The modified `.qmd` files follow the existing documentation style.
- Python code is formatted and passes linting checks.
- The modified content renders successfully.
- Mathematical derivations and code examples have been verified.
- Your commits are verified.

For substantial additions, structural changes, or new topics, consider opening an Issue first to discuss your proposal.

Typical contributions include:

- Correcting errors, typos, and unclear explanations.
- Improving code examples and comments.
- Adding clearer mathematical derivations and technical explanations.
- Fixing formatting, broken links, and rendering issues.
- Adding new learning materials, examples, or topics.
- Improving the documentation structure and accessibility.

Thank you for contributing to **dnnl-notes**.
