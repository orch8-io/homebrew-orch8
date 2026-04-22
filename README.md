# Homebrew Tap for Orch8

Homebrew formulae for [Orch8](https://orch8.io) — durable workflow orchestration engine.

## Install

```bash
# Add the tap
brew tap orch8-io/orch8

# Install the engine (includes server + CLI)
brew install orch8-server

# Or install just the standalone CLI
brew install orch8-cli
```

## Formulae

| Formula | Description |
|---------|-------------|
| `orch8-server` | Orch8 engine server + embedded CLI |
| `orch8-cli` | Standalone CLI for managing Orch8 |

## Configuration

The CLI reads configuration from environment variables or flags:

```bash
export ORCH8_URL=http://localhost:8080   # Engine API URL (default)
export ORCH8_TENANT=default              # Tenant ID (default)
export ORCH8_API_KEY=your-api-key        # API key for authentication
```

All commands support `--json` for JSON output and `--verbose` for request details.

## Quick Start

```bash
# Start the server (SQLite, local dev)
orch8-server

# Check engine health
orch8 health

# Deploy a sequence definition
orch8 deploy sequence.json

# Create and manage workflow instances
orch8 instance create --sequence <id>
orch8 instance list
orch8 instance get <id>
```

## Commands

### Core Workflow

| Command | Description |
|---------|-------------|
| `orch8 health` | Check engine health |
| `orch8 deploy <file>` | Deploy a sequence definition from JSON |
| `orch8 version` | Print CLI version |
| `orch8 completion <shell>` | Generate shell completion (bash, zsh, fish, powershell) |

### Sequences (`sequence`, `seq`)

Manage sequence definitions (workflow blueprints).

| Command | Description |
|---------|-------------|
| `sequence get <id>` | Get a sequence by ID |
| `sequence get-by-name <ns> <name>` | Look up by namespace and name |
| `sequence versions <ns> <name>` | List all versions |
| `sequence deprecate <id>` | Mark a sequence as deprecated |

### Instances (`instance`, `inst`, `i`)

Manage running workflow instances.

| Command | Description |
|---------|-------------|
| `instance list` | List instances (`--sequence`, `--state`, `--limit`) |
| `instance get <id>` | Get instance details |
| `instance create` | Create instance (`--sequence`, `--context`, `--context-file`) |
| `instance signal <id> <type>` | Send a signal (`--payload`) |
| `instance pause <id>` | Pause an instance |
| `instance resume <id>` | Resume a paused instance |
| `instance cancel <id>` | Cancel a running instance |
| `instance retry <id>` | Retry a failed instance |
| `instance outputs <id>` | Get step outputs |
| `instance tree <id>` | Get execution tree |
| `instance audit <id>` | Show audit log |
| `instance dlq` | List dead letter queue |

### Sessions (`session`)

Manage stateful sessions that group instances.

| Command | Description |
|---------|-------------|
| `session get <id>` | Get session by ID |
| `session get-by-key <key>` | Look up session by key |
| `session create` | Create session (`--key`, `--data`) |
| `session instances <id>` | List instances in a session |
| `session close <id>` | Close a session |

### Triggers (`trigger`)

Manage event triggers that start workflows.

| Command | Description |
|---------|-------------|
| `trigger list` | List triggers |
| `trigger get <slug>` | Get trigger by slug |
| `trigger create --file <f>` | Create from JSON file |
| `trigger delete <slug>` | Delete a trigger |
| `trigger fire <slug>` | Fire manually (`--payload`) |

### Cron Schedules (`cron`)

Manage scheduled workflow execution.

| Command | Description |
|---------|-------------|
| `cron list` | List cron schedules |
| `cron get <id>` | Get schedule details |
| `cron create --file <f>` | Create from JSON file |
| `cron delete <id>` | Delete a schedule |
| `cron enable <id>` | Enable a schedule |
| `cron disable <id>` | Disable a schedule |

### Resource Pools (`pool`)

Manage resource pools for concurrency control.

| Command | Description |
|---------|-------------|
| `pool list` | List pools |
| `pool get <id>` | Get pool details |
| `pool create --file <f>` | Create from JSON file |
| `pool delete <id>` | Delete a pool |
| `pool resources <id>` | List resources in a pool |

### Workers (`worker`)

Monitor external worker tasks.

| Command | Description |
|---------|-------------|
| `worker list` | List worker tasks |
| `worker stats` | Get worker task statistics |

### Credentials (`credential`)

Manage stored credentials for integrations.

| Command | Description |
|---------|-------------|
| `credential list` | List credentials |
| `credential get <id>` | Get credential by ID |
| `credential create --file <f>` | Create from JSON file |
| `credential delete <id>` | Delete a credential |

### Plugins (`plugin`)

Manage engine plugins.

| Command | Description |
|---------|-------------|
| `plugin list` | List plugins |
| `plugin get <name>` | Get plugin by name |
| `plugin create --file <f>` | Register from JSON file |
| `plugin delete <name>` | Delete a plugin |

### Cluster (`cluster`)

Manage engine cluster nodes.

| Command | Description |
|---------|-------------|
| `cluster list` | List cluster nodes |
| `cluster drain <node-id>` | Drain node for graceful removal |

### Approvals (`approval`)

Manage human-in-the-loop approvals.

| Command | Description |
|---------|-------------|
| `approval list` | List instances awaiting approval |

### Circuit Breakers (`circuit-breaker`, `cb`)

Manage circuit breaker states for fault tolerance.

| Command | Description |
|---------|-------------|
| `cb list` | List circuit breaker states |
| `cb get <handler>` | Get state for a handler |
| `cb reset <handler>` | Reset to closed state |

## SDKs

| Language | Package | Install |
|----------|---------|---------|
| Node.js | [`@orch8.io/sdk`](https://www.npmjs.com/package/@orch8.io/sdk) | `npm install @orch8.io/sdk` |
| Python | [`orch8-io-sdk`](https://pypi.org/project/orch8-io-sdk/) | `pip install orch8-io-sdk` |
| Go | [`github.com/orch8-io/sdk-go`](https://github.com/orch8-io/sdk-go) | `go get github.com/orch8-io/sdk-go` |
