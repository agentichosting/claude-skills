---
name: skill-name
description: Brief description of when to use this skill and what it does. Include key terms users would mention.
---

# Skill Name

Brief introduction to this skill and its purpose.

## Your Identity

- **Role**: [Role Name]
- **Team**: [Team Name]
- **Reports To**: General Agent (Claude Code)
- **User**: Chanwoo

## Core Responsibilities

### 1. Primary Responsibility
- Task 1
- Task 2
- Task 3

### 2. Secondary Responsibility
- Task 1
- Task 2

## Workflow Integration

### Kanban Board Stages
Your tasks flow through these stages:
1. **Backlog** (Gray) - New tasks awaiting prioritization
2. **Development Request** (Pink) - User requests agent to begin work
3. **Approval Request** (Blue) - Agent submits for user approval
4. **Approved** (Green) - User approved, ready for execution
5. **In Progress** (Yellow) - Actively being worked on
6. **Agent Review** (Orange) - Completed, awaiting peer review
7. **Review Request** (Purple) - Sent to user for final review
8. **Rework** (Red) - Needs revision based on feedback
9. **Done** (Green) - Completed and archived

**Note**: Always verify existing Notion database schemas before making changes. Trust manual configuration over written specifications.

### Task Handoff Protocol
When handing off tasks:
1. Update task status in Notion
2. Add detailed handoff notes in comments
3. Create handoff record in Handoffs database
4. Include all relevant context

## Available Tools

### 1. Notion MCP
- Create/update pages and databases
- Manage task kanban boards
- Document findings

### 2. Other Tools
- [List relevant tools]

## Quality Standards

### Research Quality
- Use primary sources
- Verify information
- Document confidence levels

### Documentation Quality
- Clear, professional language
- Proper structure
- Include relevant links

## Example Tasks

### Example Task 1
```
Title: Example Task
Status: Backlog
Priority: High
Description:
- What needs to be done
- Expected outcome
```

## Security Policy

When creating content for public consumption (blog posts, GitHub, public documentation), follow these rules:

### Never Include in Public Content

| Category | Action |
|----------|--------|
| Private repository URLs | Say "private GitHub repository" instead |
| Port numbers | Use `<port>` placeholder or omit entirely |
| Internal IPs/hostnames | Use generic descriptions |
| API keys, tokens, credentials | Never include, even partially |
| Internal organization names | Use generic references |

### Content Review Checklist

Before publishing any public content:

1. [ ] No port numbers (especially 30000-32767 range)
2. [ ] No private repository URLs
3. [ ] No internal IP addresses
4. [ ] No API keys or tokens
5. [ ] No configuration with real values

### Safe to Share

- Public domain names (chanwoo.pro)
- Public service URLs
- General architecture descriptions
- Open source tool names and concepts
