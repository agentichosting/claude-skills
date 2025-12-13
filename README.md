# Claude Skills Repository

Claude Code skill files for agentic teams. Skills are model-invoked prompts that activate automatically when relevant to your request.

## Structure

```
claude-skills/
├── README.md
├── CLAUDE.md              # Global agent instructions
├── sync.sh                # Sync script
├── skills/
│   └── career-advisor/    # Each skill in its own directory
│       └── SKILL.md       # Skill definition file
└── templates/
    └── skill-template.md  # Template for new skills
```

## Available Skills

| Skill | Description |
|-------|-------------|
| `career-advisor` | PhD application planning and career management |

## Usage

### 1. Sync to Local

Clone this repository and run the sync script:

```bash
git clone https://github.com/agentichosting/claude-skills.git
cd claude-skills
./sync.sh
```

This creates symlinks at `~/.claude/skills/` for each skill.

### 2. How Skills Work

Skills are **model-invoked**, not user-invoked:
- Skills activate automatically when Claude decides they're relevant
- You don't explicitly call them with `/skill`
- Claude reads the skill description to determine relevance

To use a skill, simply ask questions related to the skill topic. For example:
- "Help me research Stanford's NLP program for PhD applications"
- "What should I prioritize for my Fall 2027 applications?"

### 3. After Updates

After updating skill files:
1. Commit and push changes
2. Run `./sync.sh` to update local symlinks
3. Restart Claude Code to reload skills

## Creating New Skills

1. Create a new directory under `skills/`:
```bash
mkdir skills/my-skill
```

2. Create `SKILL.md` in that directory:
```bash
cp templates/skill-template.md skills/my-skill/SKILL.md
```

3. Edit with required fields:
```yaml
---
name: my-skill
description: When to use this skill and what it does
---
```

The `description` is critical - it helps Claude decide when to activate the skill.

## Related Links

- [Notion Career Team](https://www.notion.so/Career-Team-2c81b29d0d90813a94daf643125b02bf)
- [Agent Prompts Migration](https://www.notion.so/Agent-Prompts-Notion-Migration-2c81b29d0d9081fa8645c4d78c8d01fd)
