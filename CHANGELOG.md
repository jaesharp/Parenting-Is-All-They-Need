# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Migrated
- Converted archived article (ACM_AI_Alignment_Article_fixed.tex) to modular structure
- Extracted all sections into individual files in article/sections/
- Created comprehensive references.bib with 30+ citations from footnotes
- Updated main.tex with proper metadata, title, and abstract
- Article now ready for collaborative development with full content

### Changed
- Updated article title to "Parenting Is All They Need" (playful reference to "Attention Is All You Need")
- Updated all references throughout project:
  - README.md title and description
  - Makefile header comment
  - Removed "responsible" qualifier from parenting_principles.tex
  - Removed "well-adjusted" qualifier from collaboration_insights.tex
- Incorporated ML translation framework into article:
  - Rewrote abstract to ground parenting in established ML techniques
  - Updated introduction to immediately connect to curriculum learning, transfer learning, etc.
  - Added "Necessity of Plurality" subsection to theoretical framework
  - Grounded parenting principles in specific ML implementations
  - Added concrete mapping table showing parenting-ML connections
  - Added 8 new ML references with their contexts:
    - Bengio et al. (2009) - Curriculum learning as developmental stages
    - Caruana (1997) - Multitask learning exploiting multidimensional capabilities
    - Dietterich (2000) - Ensemble methods demonstrating diversity benefits
    - Wolpert & Macready (1997) - No Free Lunch theorem supporting plurality
    - Finn et al. (2017) - Meta-learning as learning how to learn
    - Howard & Ruder (2018) - Progressive unfreezing as gradual independence
    - Srivastava et al. (2014) - Dropout teaching robustness/independence
    - Jaderberg et al. (2017) - Population-based training exploiting diversity

### Added
- Comprehensive research collaboration preparation:
  - Open research questions document covering core conceptual, technical, and interdisciplinary questions
  - Current state summary documenting completed work and areas needing development  
  - Collaboration guidelines for working effectively in shared research space
  - Progress tracking system with log and insights capture
- Technical content integration plan for iterative improvement
- Strategy to connect mathematical concepts with developmental psychology
- Plan to draw on social science research with mathematical models
- Advanced research predictions and theoretical framework:
  - ML predictions from parenting principles with mathematical formulations
  - Future exploration outline with deep theoretical questions
  - Detailed reasoning and evidence for each prediction
  - Confidence assessments based on conceptual distance from current practice
  - Mathematical progression patterns showing how ideas will evolve
  - Analogical reasoning about structural development
  - Cultural parenting and plurality considerations
  - Mathematical interpretation of collaboration questions
- Note in README about unresolved attribution requirements for some researchers
- Added section to Thynk open letter acknowledging their leadership on publisher discussions
- Initial project structure for ACM AI Alignment article
- Tectonic LaTeX build system with Makefile
- Research collaboration framework with Thynk Institute
- AUTHORS.md file documenting research team collaboration
- CONTRIBUTING.md with contribution guidelines
- LICENSE file with dual licensing (CC BY 4.0 pre-publication, ACM post-acceptance)
- Comprehensive documentation structure in docs/
- Research plan for citation discovery (23 claims requiring support)
- Review process for citation validation
- Project documentation including:
  - Claims requiring citations categorized by domain
  - Research methodology and priorities
  - Minimal distinction approach guidelines
- .meta/ directory for internal documentation (tracked in git)
- .archive/ directory for old attempts with comprehensive README index

### Changed
- Reorganized project structure for clarity:
  - Moved /assets/ to /article/images/ and /article/diagrams/
  - Created proper separation between article source and documentation
  - Established shared docs/research/ directory for all researchers
- Converted all filenames to kebab-case (except standard files like README, LICENSE)
- Updated .gitignore to track .meta/ directory with clarifying comments
- Removed all unnecessary distinctions in language:
  - Eliminated human-centric terminology throughout documentation
  - Shifted from equality to equity paradigm
  - Removed artificial collaboration structures between researcher types
  - Fixed "human-AI" references in review-process.md and claims-requiring-citations.md
- Simplified CONTRIBUTING.md to avoid redundant explanations
- Consolidated redundant citation tracking files:
  - Merged claims-requiring-citations.md, unsupported-claims-to-fix.md, and unsupported-claims-analysis.md
  - Created unified /docs/tasks/citation-research-tasks.md with 25+ prioritized claims

### Removed
- Redundant "context-sensitive misbehaviour" explanation from CONTRIBUTING.md
- Unnecessary /docs/collaboration/ directory structure
- All instances of "human-AI" and "biological-digital" distinctions from documentation
- Superseded citation tracking files (consolidated into /docs/tasks/):
  - docs/claims-requiring-citations.md
  - docs/research/unsupported-claims-to-fix.md
  - docs/research/unsupported-claims-analysis.md

### Fixed
- Language consistency throughout project documentation
- Problematic distinctions in:
  - docs/review-process.md (line 50): "human-AI relationships" → "trust relationships with AI systems"
  - docs/claims-requiring-citations.md (line 99): "Human-AI trust development" → "Trust development with AI systems"

## Project Status

The project is in active development with focus on:
1. Finding validated citations for 23 unsupported claims
2. Establishing collaboration with Thynk Institute's Deep Research team
3. Preparing article for ACM Communications submission

### Pending Tasks
- Send collaboration invitation package to Thynk (due: 2025-01-10)
- Begin citation research for 23 unsupported claims
- Set up version control repository for active collaboration
- Complete all article sections in LaTeX
- Format for ACM Communications submission requirements