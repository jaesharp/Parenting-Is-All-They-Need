# Testing GitHub Actions Workflows Locally

## Methods for Local Testing

### 1. Using `act` (Recommended)

[act](https://github.com/nektos/act) runs GitHub Actions locally using Docker.

#### Installation
```bash
# macOS with Homebrew
brew install act

# Or with curl
curl https://raw.githubusercontent.com/nektos/act/master/install.sh | sudo bash
```

#### Basic Usage
```bash
# List all workflows
act -l

# Run the default push event
act

# Run a specific workflow
act -W .github/workflows/build-pdf.yml

# Run a specific job
act -j build

# Run with specific event
act push
act pull_request

# Dry run (see what would run)
act -n

# Use specific Docker image size
act -P ubuntu-latest=catthehacker/ubuntu:full-latest
```

#### Common Issues and Solutions
- **Docker required**: act needs Docker Desktop running
- **Large images**: Use `-P` to specify smaller images if builds are slow
- **Secrets**: Create `.secrets` file for any required secrets
- **Different behavior**: Some Actions may behave differently locally

### 2. Manual Testing with Docker

Create a local test environment that mimics GitHub Actions:

```bash
# Create test script
./test-workflow-locally.sh
```

### 3. Using GitHub CLI with Workflow Dispatch

```bash
# Trigger workflow manually
gh workflow run build-pdf.yml

# Watch the run
gh run watch
```

### 4. Testing Individual Steps

Test specific steps without the full workflow:

```bash
# Test linting locally
docker run --rm -v $(pwd):/workspace -w /workspace ubuntu:latest bash -c "
  apt-get update && apt-get install -y chktex lacheck
  find article/sections -name '*.tex' -exec chktex -q {} \;
"

# Test PDF build
docker run --rm -v $(pwd):/workspace -w /workspace dxjoke/tectonic-docker:latest \
  tectonic article/main.tex
```

## Creating a Local Test Script

Save this as `test-workflow-locally.sh`:

```bash
#!/bin/bash
set -e

echo "🧪 Testing GitHub Actions workflow locally..."

# Check for act
if ! command -v act &> /dev/null; then
    echo "❌ 'act' is not installed. Install it with: brew install act"
    exit 1
fi

# Check for Docker
if ! docker info &> /dev/null; then
    echo "❌ Docker is not running. Please start Docker Desktop."
    exit 1
fi

# Run specific workflow
echo "📋 Running build workflow..."
act -W .github/workflows/build-pdf.yml \
    -P ubuntu-latest=catthehacker/ubuntu:full-latest \
    --artifact-server-path /tmp/artifacts

echo "✅ Workflow test complete!"
echo "📦 Artifacts saved to: /tmp/artifacts"
```

## Tips for Local Testing

1. **Start small**: Test individual jobs before the full workflow
2. **Use dry run**: `act -n` shows what would run without executing
3. **Check logs**: `act -v` for verbose output
4. **Test matrix builds**: `act -j build -m os=ubuntu-latest`
5. **Cache dependencies**: Use `act` with `--reuse` to cache containers

## Debugging Workflow Issues

### Common Problems

1. **Missing tools**: Some GitHub-hosted runners have pre-installed tools that Docker images don't
2. **Path differences**: Use `${{ github.workspace }}` instead of hardcoded paths
3. **Permissions**: Local Docker might have different file permissions
4. **Network access**: Some corporate networks block package downloads

### Debug Commands

```bash
# See what events act supports
act -l

# Run with debug logging
act -v

# Run specific event with debug
act push -v

# Run with specific runner image
act -P ubuntu-latest=ubuntu:22.04
```

## Alternative: GitHub Codespaces

You can also test in an environment closer to GitHub Actions:

1. Open repository in GitHub Codespaces
2. Install act in the codespace
3. Run workflows with full GitHub integration

## Quick Test Commands

```bash
# Test just the lint job
act -j lint

# Test just the build job
act -j build

# Test with pull request event
act pull_request

# Test with specific branch
act push -b main
```