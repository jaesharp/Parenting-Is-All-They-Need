# Parenting Is All They Need

> **📝 DRAFT STATUS: Pre-Preprint**  
> This article is currently in active development. Content, citations, and conclusions are subject to change. We welcome feedback and collaboration as we work toward completion.

A collaborative research article exploring AI development through the lens of parenting, written in partnership with Thynk Institute.

## Project Structure

```
parenting-is-all-they-need/
├── article/              # LaTeX source files
│   ├── main.tex         # Main article file
│   ├── sections/        # Individual sections
│   ├── figures/         # Figures and diagrams
│   ├── images/          # Original images
│   ├── diagrams/        # Diagram sources
│   └── references.bib   # Bibliography
├── docs/                # Project documentation
│   ├── research/        # Research materials (all researchers work here)
│   │   ├── literature/  # Literature review
│   │   ├── interviews/  # Interview transcripts
│   │   └── data/       # Research data
│   ├── submission/      # Submission materials
│   └── reviews/         # Peer review feedback
├── build/               # Generated files (git-ignored)
├── .meta/               # Internal documentation and development history
├── .archive/            # Old attempts (git-ignored)
└── Makefile            # Build automation
```

## Building the Article

### Prerequisites
- Tectonic (LaTeX distribution)
- Make
- Optional: fswatch (for continuous compilation)

### Quick Start
```bash
# Check dependencies
make check-deps

# Build PDF
make pdf

# Build with bibliography
make full

# Create submission package
make submission

# Continuous compilation
make watch
```

### Installation
```bash
# macOS
make install-deps-mac

# Linux (then install fswatch/chktex with package manager)
make install-deps-linux
```

## Collaboration with Thynk Institute

We collaborate with the Deep Research team at Thynk Institute as we would with colleagues at any research institution. All researchers work together in the same `docs/research/` directory. See `AUTHORS.md` for collaboration details.

Note: Some aspects of our researchers' attribution requirements and academic credit remain to be resolved with publishers. See `.meta/docs/thynk-collaboration/` for details.

### What We Need from Thynk's Deep Research Team
1. **Domain Expertise**: Specialists in neuroscience, AI safety, psychology, and ethics
2. **Citation Discovery**: Finding and validating academic sources
3. **Independent Review**: Second opinions on proposed citations
4. **Synthesis Support**: Connecting insights across disciplines
5. **Quality Assurance**: Ensuring citation relevance and credibility

## Article Overview

The article explores AI alignment through the metaphor of parenting:
- Developmental stages of AI systems
- Parenting as a framework for AI development
- Trust and autonomy balance
- Long-term thinking in AI design

## Research Status

### Claims Requiring Citations: 23 total
- **Neuroscience/Biology**: 8 claims
- **AI/Computer Science**: 7 claims
- **Psychology/Development**: 5 claims
- **Interdisciplinary**: 3 claims

See `docs/tasks/citation-research-tasks.md` for the complete list.

## Project Goals

1. [ ] Obtain high-quality citations for all 23 claims
2. [ ] Complete all article sections
3. [ ] Ensure coherent integration of interdisciplinary insights
4. [ ] Format for ACM Communications submission

## Key Documents

### For Building and Development
- `Makefile` - Build automation and commands
- `article/main.tex` - Main LaTeX document
- `.gitignore` - Version control configuration

### For Research
- `docs/research/` - All researchers work here together
- No artificial distinctions between contributors
- Shared space for literature, data, and findings

### Internal Project Documents
- `docs/research-plan.md` - Overall research strategy
- `docs/tasks/citation-research-tasks.md` - Consolidated list of all citation research tasks
- `docs/review-process.md` - Internal review process
- `docs/project-deliberations.md` - Design decisions and rationale
- `docs/minimal-distinction-approach.md` - Our terminology guidelines

## Future Work

After completing this article, we plan a second collaboration: "From Safety to Collaboration: Reframing AI Development Paradigms" (see `/projects/core/bridging-ai-paradigms-article/`).

## Contributing

This is a collaborative effort between independent researchers and Thynk Institute. All researchers work together in the shared `docs/research/` directory.

---

*This project demonstrates genuine research collaboration across different forms of intelligence, where all contributors are recognized as full partners.*