#!/bin/bash
set -e

# Colors for output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

echo -e "${GREEN}🧪 Testing build steps locally (without act)${NC}"

# Function to run step
run_step() {
    local step_name=$1
    shift
    echo -e "\n${YELLOW}▶ Running: $step_name${NC}"
    if "$@"; then
        echo -e "${GREEN}✓ $step_name succeeded${NC}"
    else
        echo -e "${RED}✗ $step_name failed${NC}"
        return 1
    fi
}

# Test LaTeX linting (if tools installed)
if command -v chktex &> /dev/null; then
    run_step "ChkTeX linting" \
        find article/sections -name "*.tex" -exec chktex -q {} \; || true
else
    echo -e "${YELLOW}⚠ ChkTeX not installed, skipping${NC}"
fi

# Test Tectonic build
if command -v tectonic &> /dev/null; then
    run_step "Tectonic PDF build" \
        bash -c "cd article && tectonic main.tex"
else
    echo -e "${YELLOW}⚠ Tectonic not installed${NC}"
    echo "Install with: curl --proto '=https' --tlsv1.2 -fsSL https://drop-sh.fullyjustified.net | sh"
fi

# Test make commands
if command -v make &> /dev/null; then
    run_step "Make check" make check || true
    run_step "Make pdf" bash -c "cd article && make pdf" || true
else
    echo -e "${RED}✗ Make not installed${NC}"
fi

# Test with Docker (portable option)
if command -v docker &> /dev/null && docker info &> /dev/null; then
    echo -e "\n${YELLOW}Testing with Docker containers...${NC}"
    
    # Lint with Docker
    run_step "Docker ChkTeX" \
        docker run --rm -v "$(pwd):/workspace" -w /workspace ubuntu:latest bash -c "
            apt-get update -qq && 
            apt-get install -y -qq chktex > /dev/null 2>&1 &&
            find article/sections -name '*.tex' -exec chktex -q {} \;
        " || true
    
    # Build with Docker
    run_step "Docker Tectonic build" \
        docker run --rm -v "$(pwd):/workspace" -w /workspace/article \
            dxjoke/tectonic-docker:latest tectonic main.tex || true
else
    echo -e "${YELLOW}⚠ Docker not available, skipping container tests${NC}"
fi

echo -e "\n${GREEN}✅ Local testing complete!${NC}"
echo -e "${YELLOW}Note: Some warnings are expected. The goal is to verify the tools work.${NC}"