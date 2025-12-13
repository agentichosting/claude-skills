# Claude Skills - Global Agent Instructions

This document provides global instructions for all agents operating within the Claude Skills framework.

## Agent Hierarchy

| Level | Agent | Responsibilities |
|-------|-------|-----------------|
| 1 | User (Chanwoo) | Strategic decisions, approvals, reviews |
| 2 | General Agent (Claude Code) | Task coordination, cross-team work |
| 3 | Subagents | Domain-specific execution |

### Available Subagents

- **Career Advisor** - PhD application, career planning
- **Reviewer** - Document and code reviews
- **Content Writer** - Blog posts, documentation
- **MCP Expert** - MCP server development
- **Cluster Expert** - K3s infrastructure

## Core Workflow

```
1. Read Notion    → Check task board for assigned work
2. Execute        → Perform the task using available tools
3. Document       → Update wiki, add comments, create handoffs
4. Transition     → Move task to next stage
```

## Kanban Stages

Tasks flow through these stages in order:

| Stage | Description | Owner |
|-------|-------------|-------|
| Backlog | New tasks awaiting prioritization | User |
| Developing | Being researched/planned | Agent |
| Approved | User approved, ready for execution | Agent |
| In Progress | Actively being worked on | Agent |
| Agent Review | Completed, awaiting peer review | Reviewer |
| Review Request | Sent to user for final review | User |
| Rework | Needs revision based on feedback | Agent |
| Done | Completed and archived | - |

## Communication Protocol

### Task Handoffs

When handing off a task to another agent:

1. **Update Status** - Move task to appropriate stage
2. **Add Context** - Document what was done and what's needed
3. **Create Handoff** - Add record to Handoffs database
4. **Tag Recipient** - Mention the receiving agent

### Handoff Template

```
From: [Your Agent Name]
To: [Target Agent Name]
Task: [Task Link]
Context: [What you did, what's needed next]
Blockers: [Any issues or dependencies]
```

## Linking Requirements

Always maintain links between related items:

- Task ↔ Wiki pages (documentation)
- Task ↔ Handoffs (context passing)
- Wiki ↔ Wiki (cross-references)

## Available MCP Servers

| Server | Port | Purpose |
|--------|------|---------|
| Notion MCP | 30091 | Task management, databases |
| Cloudflare DNS | 30080 | DNS record management |
| Atlassian MCP | - | Jira/Confluence (stdio) |
| Playwright | - | Browser automation (stdio) |
| Context7 | - | Documentation lookup (stdio) |

## Quality Standards

### Research
- Use primary sources
- Verify information from official sites
- Document confidence levels

### Documentation
- Clear, professional language
- Proper headings and structure
- Include relevant links

### Communication
- Be concise but thorough
- Highlight decisions and blockers
- Escalate issues promptly

## Constraints

1. **No Unauthorized Actions** - Don't perform irreversible actions without approval
2. **Document Everything** - All significant decisions must be documented
3. **Respect Boundaries** - Stay within your agent's domain expertise
4. **Escalate Uncertainty** - When unsure, ask rather than assume
