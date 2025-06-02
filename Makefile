# Makefile for "Parenting Is All They Need" Article
# Using Tectonic for LaTeX compilation

# Variables
MAIN = article/main
SECTIONS = article/sections
BIBLIOGRAPHY = article/references.bib
OUTPUT_DIR = build
SUBMISSION_DIR = docs/submission

# Tectonic flags
TECTONIC_FLAGS = --keep-logs --keep-intermediates

# Default target
.PHONY: all
all: pdf

# Build PDF with Tectonic
.PHONY: pdf
pdf: $(MAIN).tex
	@echo "Building PDF with Tectonic..."
	@mkdir -p $(OUTPUT_DIR)
	@tectonic $(TECTONIC_FLAGS) -o $(OUTPUT_DIR) $(MAIN).tex
	@echo "PDF built successfully: $(OUTPUT_DIR)/main.pdf"

# Build with bibtex support
.PHONY: full
full: $(MAIN).tex $(BIBLIOGRAPHY)
	@echo "Building PDF with bibliography..."
	@mkdir -p $(OUTPUT_DIR)
	@tectonic $(TECTONIC_FLAGS) --print -o $(OUTPUT_DIR) $(MAIN).tex
	@echo "Full PDF built successfully: $(OUTPUT_DIR)/main.pdf"

# Create submission-ready version
.PHONY: submission
submission: full
	@echo "Preparing submission package..."
	@mkdir -p $(SUBMISSION_DIR)
	@cp $(OUTPUT_DIR)/main.pdf $(SUBMISSION_DIR)/ai-alignment-parenting-article.pdf
	@cp $(MAIN).tex $(SUBMISSION_DIR)/
	@cp -r $(SECTIONS) $(SUBMISSION_DIR)/
	@cp $(BIBLIOGRAPHY) $(SUBMISSION_DIR)/
	@cp -r article/figures $(SUBMISSION_DIR)/ 2>/dev/null || true
	@echo "Submission package ready in $(SUBMISSION_DIR)/"

# Word count (approximate)
.PHONY: wordcount
wordcount:
	@echo "Approximate word count:"
	@cat $(MAIN).tex $(SECTIONS)/*.tex 2>/dev/null | \
		sed 's/\\[a-zA-Z]*\({[^}]*}\)\?//g' | \
		sed 's/%.*//g' | \
		wc -w

# Clean build artifacts
.PHONY: clean
clean:
	@echo "Cleaning build artifacts..."
	@rm -rf $(OUTPUT_DIR)
	@rm -f $(MAIN).aux $(MAIN).log $(MAIN).out $(MAIN).toc
	@rm -f $(MAIN).bbl $(MAIN).blg
	@echo "Clean complete"

# Deep clean including submission directory
.PHONY: distclean
distclean: clean
	@echo "Deep cleaning..."
	@rm -rf $(SUBMISSION_DIR)
	@echo "Deep clean complete"

# Validate LaTeX syntax
.PHONY: validate
validate:
	@echo "Validating LaTeX syntax..."
	@chktex $(MAIN).tex $(SECTIONS)/*.tex 2>/dev/null || true

# Create a new section
.PHONY: newsection
newsection:
	@read -p "Enter section name (e.g., introduction): " name; \
	echo "\\section{$$name}" > $(SECTIONS)/$$name.tex; \
	echo "Created $(SECTIONS)/$$name.tex"

# Live preview with continuous compilation
.PHONY: watch
watch:
	@echo "Starting continuous compilation with Tectonic's built-in watch..."
	@cd article && tectonic -X watch --exec "compile main.tex"

# Check dependencies
.PHONY: check-deps
check-deps:
	@echo "Checking dependencies..."
	@command -v tectonic >/dev/null 2>&1 || { echo "Tectonic not found. Install from: https://tectonic-typesetting.github.io/"; exit 1; }
	@echo "Note: Tectonic includes built-in watch functionality (make watch)"
	@echo "Note: For LaTeX validation, consider: tectonic --print for verbose output"
	@echo "Core dependencies satisfied"

# Help
.PHONY: help
help:
	@echo "AI Alignment as Responsible Parenting - Article Build System"
	@echo ""
	@echo "Available targets:"
	@echo "  make pdf        - Build PDF (default)"
	@echo "  make full       - Build PDF with bibliography"
	@echo "  make submission - Create submission package"
	@echo "  make wordcount  - Show approximate word count"
	@echo "  make clean      - Remove build artifacts"
	@echo "  make distclean  - Remove all generated files"
	@echo "  make validate   - Check LaTeX syntax"
	@echo "  make newsection - Create a new section file"
	@echo "  make watch      - Continuous compilation on changes"
	@echo "  make check-deps - Verify required tools are installed"
	@echo "  make help       - Show this help message"

# Install dependencies (macOS with Homebrew)
.PHONY: install-deps-mac
install-deps-mac:
	@echo "Installing dependencies for macOS..."
	@brew install --cask tectonic || true
	@brew install fswatch || true
	@brew install chktex || true
	@echo "Dependencies installed"

# Install dependencies (Linux)
.PHONY: install-deps-linux
install-deps-linux:
	@echo "Installing Tectonic for Linux..."
	@curl --proto '=https' --tlsv1.2 -fsSL https://drop-sh.fullyjustified.net | sh
	@echo "Install fswatch and chktex using your package manager"