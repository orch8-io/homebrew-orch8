# Homebrew Tap for Orch8

Homebrew formulae for [Orch8](https://orch8.io) — durable workflow orchestration engine.

## Install

```bash
# Add the tap
brew tap orch8-io/orch8

# Install the engine (includes server + CLI)
brew install orch8-io/orch8/orch8-server

# Or install just the standalone CLI
brew install orch8-io/orch8/orch8-cli
```

## Formulae

| Formula | Description |
|---------|-------------|
| `orch8-server` | Orch8 engine server + embedded CLI |
| `orch8-cli` | Standalone CLI for managing Orch8 |

## Quick Start

```bash
# Start the server (SQLite, local dev)
orch8-server

# Check health
orch8 health

# Create a sequence
orch8 sequence create -f sequence.json
```
