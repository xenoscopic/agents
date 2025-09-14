#!/bin/sh

# Resolve the absolute path to AGENTS.md in the same directory as this script.
# Do not assume that it's in the current working directory.
script_dir=$(CDPATH= cd -- "$(dirname -- "$0")" 2>/dev/null && pwd -P)
agents_md="${script_dir}/AGENTS.md"

# Verify that AGENTS.md exists where expected.
if [ ! -f "$agents_md" ]; then
    echo "Error: Could not find AGENTS.md next to install.sh." 1>&2
    echo "Expected at: $agents_md" 1>&2
    exit 1
fi

# Register with Claude Code, if configured.
if [ -d "${HOME}/.claude" ]; then
    echo "Registering for Claude Code."
    ln -is "$agents_md" "${HOME}/.claude/CLAUDE.md"
else
    echo "Claude Code not configured."
fi

# Register with OpenAI Codex, if configured.
if [ -d "${HOME}/.codex" ]; then
    echo "Registering for OpenAI Codex."
    ln -is "$agents_md" "${HOME}/.codex/AGENTS.md"
else
    echo "OpenAI Codex not configured."
fi

# Register with opencode, if configured.
if [ -d "${HOME}/.config/opencode" ]; then
    echo "Registering for opencode."
    ln -is "$agents_md" "${HOME}/.config/opencode/AGENTS.md"
else
    echo "opencode not configured."
fi
