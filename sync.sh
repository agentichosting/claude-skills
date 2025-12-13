#!/bin/bash

# Claude Skills Sync Script
# Creates symlinks from this repository to ~/.claude/skills/

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILLS_DIR="$HOME/.claude/skills"

echo "Claude Skills Sync"
echo "=================="
echo ""

# Create skills directory if it doesn't exist
if [ ! -d "$SKILLS_DIR" ]; then
    echo "Creating $SKILLS_DIR..."
    mkdir -p "$SKILLS_DIR"
fi

# Team directories to sync
TEAMS=("career" "infra" "mcp" "blog" "shared")

echo "Syncing skill directories..."
echo ""

for team in "${TEAMS[@]}"; do
    source_dir="$SCRIPT_DIR/skills/$team"
    target_link="$SKILLS_DIR/$team"

    # Remove existing symlink or directory
    if [ -L "$target_link" ]; then
        echo "  Removing existing symlink: $target_link"
        rm "$target_link"
    elif [ -d "$target_link" ]; then
        echo "  Warning: $target_link is a directory, skipping..."
        continue
    fi

    # Create new symlink
    if [ -d "$source_dir" ]; then
        ln -s "$source_dir" "$target_link"
        echo "  Linked: $team -> $source_dir"
    else
        echo "  Warning: Source directory not found: $source_dir"
    fi
done

echo ""
echo "Sync complete!"
echo ""
echo "Skills directory contents:"
ls -la "$SKILLS_DIR"
