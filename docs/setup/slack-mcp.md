# Slack MCP Setup

The Slack MCP server lets every team member interact with Claude directly from Slack —
ask questions, trigger agent tasks, and get responses without leaving your workspace.

---

## How It Works

Claude Code connects to Slack via the
[`@modelcontextprotocol/server-slack`](https://github.com/modelcontextprotocol/servers/tree/main/src/slack)
MCP server. Once configured, Claude can:

- Read messages and threads from channels
- Post messages and replies
- List channels and users
- Search message history

---

## One-Time Setup: Create the Slack App

> Only one person needs to do this — then share the tokens with the team via your
> secrets manager.

1. Go to [api.slack.com/apps](https://api.slack.com/apps) and click **Create New App**
2. Choose **From scratch** → name it (e.g. `LMG Claude`) → select your workspace
3. Under **OAuth & Permissions → Scopes → Bot Token Scopes**, add:

   | Scope | Purpose |
   |-------|---------|
   | `channels:history` | Read messages in public channels |
   | `channels:read` | List public channels |
   | `chat:write` | Post messages |
   | `groups:history` | Read messages in private channels |
   | `groups:read` | List private channels |
   | `im:history` | Read direct messages |
   | `im:read` | List direct messages |
   | `mpim:history` | Read group DMs |
   | `mpim:read` | List group DMs |
   | `users:read` | Resolve user info |

4. Click **Install to Workspace** and approve
5. Copy the **Bot User OAuth Token** (starts with `xoxb-`)
6. Go to **Basic Information** and copy your **Team ID** (starts with `T`)
7. Invite the bot to any channels it should read:
   `/invite @LMG Claude`

---

## Per-Developer Setup: Set Environment Variables

Each developer sets these in their shell profile (`~/.bashrc`, `~/.zshrc`, etc.):

```bash
export SLACK_BOT_TOKEN="xoxb-your-token-here"
export SLACK_TEAM_ID="T0123456789"
```

Then reload: `source ~/.bashrc`

For Claude Code on the web (remote sessions), add the same variables through your
project's environment/secrets configuration so they are available during sessions.

---

## Verify It Works

Once the env vars are set, start a Claude Code session and try:

```
List the channels in our Slack workspace.
```

Claude should respond with a list of channels it can see.

---

## Security Notes

- The bot token is a secret — treat it like a password
- Store it in your team's secrets manager (not in `.env` files committed to git)
- Restrict the bot to only the channels it needs
- Rotate the token immediately if it is ever exposed
