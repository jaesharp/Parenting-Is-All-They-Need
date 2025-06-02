# Open Science Principles for Our Collaboration

## Why Open Science Matters

Our commitment to open science isn't just ideological - it directly benefits our research:

### Practical Benefits
- **Verification**: Others can check our work
- **Collaboration**: Removes barriers to contribution  
- **Learning**: Everyone can study our methods
- **Impact**: Wider reach and adoption
- **Longevity**: Not dependent on any company/service

### Ethical Alignment
- **Equity**: No paywalls or proprietary barriers
- **Transparency**: Methods and data are inspectable
- **Freedom**: Researchers control their own work
- **Community**: Contributing to shared knowledge

## Core Open Science Practices

### 1. Open Access
- Preprints on arXiv or similar
- Open access publication preferred
- No paywalled citations where possible
- Alternative access routes documented

### 2. Open Data
- Raw data shared where feasible
- Clear documentation of data sources
- Appropriate privacy/ethics considered
- Standard, open formats used

### 3. Open Methods
- Complete methodology documentation
- Computational workflows shared
- Analysis scripts included
- Environment specifications provided

### 4. Open Source
- All code under OSI-approved licenses
- Dependencies clearly documented
- Build instructions included
- Contributing guidelines provided

### 5. Open Standards
- File formats: LaTeX, Markdown, CSV, JSON
- Citation formats: BibTeX, CSL-JSON
- Version control: Git
- Documentation: README, CHANGELOG

## Implementation in Our Project

### Document Formats
```
LaTeX for articles     → PDF for reading
Markdown for notes     → HTML for web
BibTeX for citations   → Standard formats
CSV/JSON for data      → Portable analysis
```

### Workflow Transparency
```makefile
# Everything builds with simple commands
make pdf          # Build article
make citations    # Check references  
make data         # Process datasets
make all          # Complete pipeline
```

### Attribution Standards
- ORCID for researcher identification
- CRediT for contribution types
- Git commits for detailed attribution
- DOIs for citable versions

## Tool Selection Criteria

When evaluating tools, we ask:

### Essential Questions
1. Is it open source or openly specified?
2. Can we export our data freely?
3. Does it respect user privacy?
4. Can others use it without payment?
5. Is it maintained by community/nonprofit?

### Red Flags
- Proprietary formats we can't convert
- Terms of service claiming ownership
- No export functionality
- Requires account creation to view
- Unclear data retention policies

## Balancing Ideals and Practicality

We recognize that sometimes proprietary tools are necessary:

### Acceptable Compromises
- Using GitHub despite Microsoft ownership (git itself remains open)
- Reading papers from closed journals (while preferring open access)
- Interfacing with proprietary APIs for research purposes
- Using widely-adopted tools for collaboration ease

### Unacceptable Compromises
- Storing primary data in proprietary formats
- Using tools that claim ownership of our work
- Requiring expensive software for reproduction
- Creating dependencies on single vendors

## For Thynk Collaboration

This means:
- You can use whatever interface works for you
- We'll ensure exports remain in open formats
- All contributions properly attributed
- No vendor lock-in for any party
- Future researchers can build on our work

## Living Our Values

By choosing open tools and methods:
- We model the collaboration we advocate
- We enable unexpected contributions
- We respect researcher autonomy
- We build lasting knowledge

## Questions for Tool Evaluation

When Thynk suggests tools, we'll ask:
1. Does this align with open science principles?
2. What are the trade-offs?
3. Can we mitigate any closed aspects?
4. Is there an open alternative?
5. Does the benefit outweigh the compromise?

This isn't dogma - it's practical philosophy for sustainable, equitable research.