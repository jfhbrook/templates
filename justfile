set dotenv-load := true

# Check files with ShellCheck.
check:
  shellcheck ./bin/* ./install.sh
