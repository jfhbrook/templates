set dotenv-load := true

tap := "jfhbrook/joshiverse"

# Create a new formula.
create *args:
  brew create --tap '{{ tap }}' {{args}}

# Create a new formula from an NPM package.
create-npm package:
  just create --node "$(npm info '{{ package }}' --json | jq -r .dist.tarball)" --set-name "$(npm info '{{ package }}' --json | jq -r .name)" --set-license "$(npm info '{{ package }}' --json | jq -r .license)"
