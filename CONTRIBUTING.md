# Contributing

Thank you for your interest in contributing to this Homebrew tap. Your contributions help improve the tools available here.

## Adding a New Formula or Improving Existing Ones

To propose changes, please follow these steps:

1.  **Fork the repository** to your own GitHub account.
2.  **Create a new branch** for your changes.
3.  **Make your changes** in the `Formula/` directory.
4.  **Verify your changes** locally:
    *   Check for style and potential issues:
        ```bash
        brew audit --new-formula <formula>
        ```
    *   Test the installation and functionality:
        ```bash
        brew install <formula>
        brew test <formula>
        ```
5.  **Commit your changes** with a descriptive message.
6.  **Push the branch** to your fork.
7.  **Submit a pull request** to this repository.

## Testing Requirements

Before submitting a pull request, please ensure that your formula passes Homebrew's standard tests. We recommend using `brew test-bot` to verify that the formula builds correctly on all supported platforms:

```bash
brew test-bot --root-url=https://github.com/stn1slv/homebrew-tap/releases/download/<formula> --tap=stn1slv/tap <formula>
```

Testing locally with `brew audit` and `brew test` is also mandatory.

## Submitting a Pull Request

When submitting a pull request, please provide:
*   A clear description of the change.
*   The reason for the change (e.g., adding a new tool, fixing a bug, updating a version).
*   Any additional context or testing you have performed.

All pull requests will be reviewed as soon as possible.
