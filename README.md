# pre-commit-hooks

![Go](https://img.shields.io/badge/go-00ADD8?style=for-the-badge&logo=go&logoColor=white)
![pre-commit](https://img.shields.io/badge/pre--commit-FAB040?style=for-the-badge&logo=pre-commit&logoColor=white)
![Git](https://img.shields.io/badge/git-F05032?style=for-the-badge&logo=git&logoColor=white)

This repository contains a collection of Git hooks to be used with the [pre-commit](https://pre-commit.com/) framework.

## Available Hooks ⚓

### Go

- `golangci-lint`: golangci-lint is a fast Go linters runner. It runs linters in parallel, uses caching, supports yaml config, has integrations with all major IDE and has dozens of linters included.


## Usage ⚙
Create a `.pre-commit-config.yaml` inside your code repositories and add the hook.

```yaml
repos:
  - repo: https://github.com/dirien/pre-commit-hooks
    rev: <VERSION> # Check for the latest version: https://github.com/dirien/pre-commit-hooks/releases
    hooks:
      - id: golangci-lint
```

Once you created the configuration file inside your repository, you must run `pre-commit install` to activate the hook. 

That's it, pre-commit will now check for changes and run the hook.