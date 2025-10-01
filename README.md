# slim-cc (copied and adapted from [Claude Container](https://github.com/nezhar/claude-container) by [nezhar](https://github.com/nezhar)

Docker containers with Claude Code or Codex CLI pre-installed and ready to use. This container includes all necessary dependencies and provides an easy way to run Claude Code in an isolated environment.

## Quick Start using Docker directly

```bash
docker run \
    --rm \
    -it \
    -v "$(pwd):/workspace" \
    -v "$HOME/.config/claude-container:/claude" \
    -e "CLAUDE_CONFIG_DIR=/claude" \
    slim-cc:$TAG \
    /root/.local/bin/claude
```

This will store the credentials in `$HOME/.config/claude-container` on your host machine and will be able to reuse them after the first login.

## Claude Code authentication

You will be prompted by Claude Code to authorize. If you have a Claude subscription and you choose the first login option you will receive a login link for the authorization. After following the link you will receive a token that you need to paste into your terminal and you are ready to go.
