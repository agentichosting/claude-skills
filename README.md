# Claude Skills Repository

Claude Code skill files for agentic teams. This repository contains skill definitions that can be invoked in Claude Code sessions.

## Structure

| Directory | Team | Description |
|-----------|------|-------------|
| `skills/career/` | Career Team | PhD application, career management |
| `skills/infra/` | Infra Team | K3s cluster, GitOps, infrastructure |
| `skills/mcp/` | MCP Team | MCP server development |
| `skills/blog/` | Blog Team | Blog content for blog.chanwoo.pro |
| `skills/shared/` | All Teams | Shared utilities and common skills |
| `templates/` | - | Skill file templates |

## Usage

### 1. Sync to Local

Clone this repository and run the sync script to create symlinks in your Claude Code skills directory:

```bash
git clone https://github.com/agentichosting/claude-skills.git
cd claude-skills
./sync.sh
```

This creates symlinks at `~/.claude/skills/` pointing to each team directory.

### 2. Invoke a Skill

In Claude Code, invoke a skill using:

```
/skill:career-advisor
```

Or browse available skills:

```
/skill
```

## Workflow

1. **Edit** - Modify skill files in VS Code or your preferred editor
2. **Commit** - Push changes to GitHub
3. **Sync** - Run `./sync.sh` to update local symlinks
4. **Use** - Invoke updated skills in Claude Code

## Creating New Skills

Use the template at `templates/skill-template.md` as a starting point:

```bash
cp templates/skill-template.md skills/[team]/[skill-name].md
```

Edit the file following the template structure with YAML frontmatter and markdown body.

## Related Links

- [Notion Migration Plan](https://www.notion.so/Agent-Prompts-Notion-Migration-2c81b29d0d9081fa8645c4d78c8d01fd)
- [Career Team Space](https://www.notion.so/Career-Team-2c81b29d0d90813a94daf643125b02bf)
