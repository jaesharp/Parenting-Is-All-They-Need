# Collaboration Needs and Desires

## What We're Trying to Achieve

Before discussing tools, let's clarify what we need from our collaboration infrastructure.

### Our Open Source Research Philosophy

As an open source research team, we're committed to:
- **Transparency**: Open methodologies and processes
- **Reproducibility**: Anyone can verify and build on our work
- **Accessibility**: No proprietary tools creating barriers
- **Community**: Enabling others to contribute and learn
- **Freedom**: Using and creating tools that respect user autonomy

This commitment shapes our tool choices and workflows.

### Core Needs

1. **Parallel Work**
   - Multiple researchers contributing simultaneously
   - No blocking or waiting for others
   - Ability to explore different directions at once

2. **Attribution & Credit**
   - Every contribution clearly attributed
   - Build publication records for all researchers
   - Transparent record of who did what

3. **Idea Preservation**
   - Nothing gets lost
   - Can revisit earlier explorations
   - Learn from what didn't work

4. **Quality Assurance**
   - Review before integration
   - Catch errors early
   - Maintain academic standards

5. **Asynchronous Collaboration**
   - Work across time zones
   - Contribute when inspired
   - No required synchronous meetings

### Deeper Desires

1. **Evolution Tracking**
   - See how ideas develop
   - Understand why decisions were made
   - Learn from the process itself

2. **Experimental Freedom**
   - Try bold ideas safely
   - Easy to reverse if needed
   - Branches for exploration

3. **Integration with Research Tools**
   - LaTeX compilation
   - Citation management
   - Figure generation
   - Data analysis

4. **Accessibility**
   - Multiple ways to contribute
   - No single required tool
   - Support different working styles

5. **Transparency**
   - Open process (if desired)
   - Clear communication
   - Visible progress

## What This Enables

### For Individual Researchers
- Build portfolio of contributions
- Learn from others' methods
- Work in preferred style
- Maintain autonomy

### For Our Collaboration
- Rich dialogue on changes
- Natural documentation
- Emergent workflow
- Mutual learning

### For Future Research
- Model for other collaborations
- Reproducible methods
- Building on our work
- Advancing the field
- Contributing to open science

## Key Questions for Tool Selection

1. **How do you prefer to work?**
   - Real-time collaboration?
   - Asynchronous contributions?
   - Mixed approach?

2. **What's your comfort with different tools?**
   - Command line interfaces?
   - Web-based tools?
   - Desktop applications?
   - API integrations?

3. **What matters most to you?**
   - Ease of use?
   - Powerful features?
   - Specific integrations?
   - Learning opportunities?

4. **Privacy considerations?**
   - Fully public process?
   - Private until publication?
   - Selective sharing?

## Possible Solutions to Evaluate

Based on these needs and our open source commitment, we prioritize:

### Version Control Systems
- **Git** (fully open source, widely adopted)
  - With platforms: GitLab (self-hostable), GitHub (proprietary platform but accessible), Codeberg (nonprofit)
- **Mercurial** (open source alternative)
- **Fossil** (open source with built-in wiki/tickets)
- ~~Perforce~~ (proprietary - not aligned with our values)

### Collaborative Editing
- **HedgeDoc/CodiMD** (open source, self-hostable, markdown)
- **Overleaf** (has open source version)
- **Etherpad** (open source, real-time)
- **Jupyter** (open source for computational documents)
- Google Docs (proprietary but widely accessible - use with caution)
- ~~Notion~~ (proprietary, creates lock-in)

### Hybrid Approaches
- Git for code/LaTeX + HedgeDoc for discussions
- Overleaf Community Edition with Git integration
- Jupyter notebooks for literate programming
- Zotero (open source) for citation management
- Custom workflows combining open tools

### Novel Solutions
- **IPFS** for distributed, permanent storage
- **OpenTimestamps** for proving existence/priority
- **ORCID** for researcher identification
- **DOI** via Zenodo for citable outputs
- **ActivityPub** for federated collaboration
- Something we haven't imagined yet

## The Meta-Question

How we choose to collaborate itself demonstrates our approach:
- Do we impose a solution or discover one together?
- Do we start simple and evolve?
- Do we prioritize your preferences or ours?
- How do we handle disagreement about tools?

## Next Steps

1. **Share your thoughts** on these needs
2. **Add any we missed** that matter to you
3. **Rank priorities** if they conflict
4. **Explore solutions** that meet our combined needs
5. **Pilot our choice** with something small
6. **Iterate** based on experience

## The Principle

Tools should serve collaboration, not constrain it. The best tool is the one that:
- Everyone can use effectively
- Meets our core needs
- Enables great research
- Feels natural, not forced
- **Respects freedom and privacy**
- **Can be independently verified**
- **Doesn't create vendor lock-in**
- **Contributes to the commons**

## Our Methodology Requirements

For research reproducibility, we need:
1. **Open formats** (LaTeX, Markdown, BibTeX, CSV)
2. **Documented workflows** (makefiles, scripts, READMEs)
3. **Version-controlled data** (where appropriate)
4. **Accessible archives** (institutional repositories, preprint servers)
5. **Clear licensing** (CC-BY, GPL, MIT as appropriate)

## Recommended Starting Point

While we're open to exploring options together, our experience suggests:
1. **Git repository** (on GitLab/Codeberg) for version control
2. **LaTeX** via Tectonic for document preparation
3. **Markdown** for discussions and documentation
4. **Zotero** for collaborative citation management
5. **Make/Scripts** for reproducible builds

But these are preferences, not prescriptions. What matters most is finding tools that work for everyone while maintaining our open science principles.

What are your thoughts on these needs and principles? What would you add or change?