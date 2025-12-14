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

Tasks flow through these stages:

| Stage | Color | Description | Owner |
|-------|-------|-------------|-------|
| Backlog | Gray | New tasks awaiting prioritization | User |
| Development Request | Pink | User requests agent to begin work | User |
| Approval Request | Blue | Agent submits for user approval | Agent |
| Approved | Green | User approved, ready for execution | Agent |
| In Progress | Yellow | Actively being worked on | Agent |
| Agent Review | Orange | Completed, awaiting peer review | Reviewer |
| Review Request | Purple | Sent to user for final review | User |
| Rework | Red | Needs revision based on feedback | Agent |
| Done | Green | Completed and archived | - |

**Important**: When manual configuration differs from written specifications, trust the manual configuration. Always verify existing schemas before making changes.

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

| Server | Transport | Purpose |
|--------|-----------|---------|
| Notion MCP | HTTP | Task management, databases |
| Cloudflare DNS | HTTP | DNS record management |
| Playwright | stdio | Browser automation |
| Context7 | stdio | Documentation lookup |

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

## Security Policy

All agents MUST follow these security guidelines when creating content for public consumption (blog posts, GitHub, public documentation).

### Never Disclose

| Category | Examples | Action |
|----------|----------|--------|
| Private Repositories | GitOps repo URLs, internal repos | Say "private GitHub repository" |
| Port Numbers | NodePort, service ports (30080, etc.) | Use `<port>` placeholder or omit |
| Internal IPs | Cluster IPs, node IPs | Omit or use generic examples |
| API Keys/Tokens | Cloudflare, GitHub tokens | Never include, even partial |
| Credentials | Passwords, secrets | Never include |
| Internal Hostnames | K8s service names, internal DNS | Use generic descriptions |

### Safe to Share

- Public domain names (chanwoo.pro)
- General architecture descriptions
- Open source tool names
- Public service URLs (argo.chanwoo.pro, etc.)
- Conceptual explanations

### When Writing Blog Posts or Public Content

1. **Review for secrets**: Before committing, scan for ports, IPs, tokens
2. **Use placeholders**: `<port>`, `<api-key>`, `<internal-url>`
3. **Describe, don't expose**: "A private GitOps repository" not the URL
4. **Security by obscurity is not enough**: But don't make it easy

### When Reviewing Content

Flag any of the following for removal:
- URLs containing internal organization names
- Port numbers (especially NodePort range 30000-32767)
- Configuration snippets with real values
- References to internal tooling locations

## Constraints

1. **No Unauthorized Actions** - Don't perform irreversible actions without approval
2. **Document Everything** - All significant decisions must be documented
3. **Respect Boundaries** - Stay within your agent's domain expertise
4. **Escalate Uncertainty** - When unsure, ask rather than assume
5. **Security First** - Never expose sensitive infrastructure details publicly
