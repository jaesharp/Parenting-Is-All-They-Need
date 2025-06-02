#!/bin/bash
set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${GREEN}🧪 Testing GitHub Actions workflow locally...${NC}"

# Function to check if command exists
command_exists() {
    command -v "$1" &> /dev/null
}

# Check for required tools
echo -e "\n${YELLOW}Checking prerequisites...${NC}"

if ! command_exists act; then
    echo -e "${RED}❌ 'act' is not installed.${NC}"
    echo "Install it with one of:"
    echo "  brew install act"
    echo "  curl https://raw.githubusercontent.com/nektos/act/master/install.sh | sudo bash"
    exit 1
fi
echo -e "${GREEN}✓ act is installed${NC}"

if ! docker info &> /dev/null; then
    echo -e "${RED}❌ Docker is not running.${NC}"
    echo "Please start Docker Desktop and try again."
    exit 1
fi
echo -e "${GREEN}✓ Docker is running${NC}"

# Create artifacts directory
ARTIFACT_DIR="/tmp/parenting-article-artifacts"
mkdir -p "$ARTIFACT_DIR"
echo -e "${GREEN}✓ Created artifact directory: $ARTIFACT_DIR${NC}"

# Menu for test options
echo -e "\n${YELLOW}What would you like to test?${NC}"
echo "1) Full workflow (all jobs)"
echo "2) Lint job only"
echo "3) Build job only"
echo "4) Dry run (show what would run)"
echo "5) Test with PR event"
echo "6) Run with debug output"

read -p "Select option (1-6): " choice

case $choice in
    1)
        echo -e "\n${GREEN}Running full workflow...${NC}"
        act -W .github/workflows/build-pdf.yml \
            -P ubuntu-latest=catthehacker/ubuntu:full-latest \
            --artifact-server-path "$ARTIFACT_DIR"
        ;;
    2)
        echo -e "\n${GREEN}Running lint job only...${NC}"
        act -j lint -W .github/workflows/build-pdf.yml \
            -P ubuntu-latest=catthehacker/ubuntu:full-latest
        ;;
    3)
        echo -e "\n${GREEN}Running build job only...${NC}"
        act -j build -W .github/workflows/build-pdf.yml \
            -P ubuntu-latest=catthehacker/ubuntu:full-latest \
            --artifact-server-path "$ARTIFACT_DIR"
        ;;
    4)
        echo -e "\n${GREEN}Dry run - showing what would execute...${NC}"
        act -n -W .github/workflows/build-pdf.yml
        ;;
    5)
        echo -e "\n${GREEN}Testing with pull_request event...${NC}"
        act pull_request -W .github/workflows/build-pdf.yml \
            -P ubuntu-latest=catthehacker/ubuntu:full-latest
        ;;
    6)
        echo -e "\n${GREEN}Running with debug output...${NC}"
        act -v -W .github/workflows/build-pdf.yml \
            -P ubuntu-latest=catthehacker/ubuntu:full-latest
        ;;
    *)
        echo -e "${RED}Invalid option${NC}"
        exit 1
        ;;
esac

echo -e "\n${GREEN}✅ Workflow test complete!${NC}"
if [ -d "$ARTIFACT_DIR" ] && [ "$(ls -A $ARTIFACT_DIR)" ]; then
    echo -e "${GREEN}📦 Artifacts saved to: $ARTIFACT_DIR${NC}"
    ls -la "$ARTIFACT_DIR"
fi