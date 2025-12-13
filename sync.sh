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

echo "Syncing skill directories..."
echo ""

# Find all directories containing SKILL.md files
for skill_dir in "$SCRIPT_DIR/skills"/*/; do
    if [ -f "${skill_dir}SKILL.md" ]; then
        skill_name=$(basename "$skill_dir")
        target_link="$SKILLS_DIR/$skill_name"

        # Remove existing symlink or directory
        if [ -L "$target_link" ]; then
            echo "  Removing existing symlink: $target_link"
            rm "$target_link"
        elif [ -d "$target_link" ]; then
            echo "  Warning: $target_link is a directory, skipping..."
            continue
        fi

        # Create new symlink
        ln -s "$skill_dir" "$target_link"
        echo "  Linked: $skill_name -> $skill_dir"
    fi
done

echo ""
echo "Sync complete!"
echo ""
echo "Skills directory contents:"
ls -la "$SKILLS_DIR"
