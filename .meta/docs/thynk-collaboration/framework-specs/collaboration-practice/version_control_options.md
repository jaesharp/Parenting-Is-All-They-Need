# Git Collaboration Guide for Research Partners

## Why We Use Git

Git isn't just for software - it's perfect for collaborative research:
- **Every idea is preserved** - Nothing gets lost in email threads
- **Clear attribution** - Every contribution is credited
- **Parallel exploration** - Work on different sections simultaneously
- **Transparent process** - See how ideas evolve
- **Quality control** - Review before integrating changes

## Getting Started Options

### Option 1: Web-Only (Easiest)
No software installation required:
1. Use GitHub/GitLab's web interface
2. Edit files directly in browser
3. Propose changes through web UI
4. Participate in discussions

### Option 2: Desktop Apps
User-friendly applications:
- GitHub Desktop (free)
- GitKraken (visual interface)
- SourceTree (comprehensive)

### Option 3: Command Line
For those who prefer:
```bash
git clone [repository-url]
git checkout -b your-feature-branch
# Make changes
git add .
git commit -m "Add insights on parenting metaphor"
git push origin your-feature-branch
```

## Our Proposed Workflow

### For Major Contributions
1. **Create a branch** named descriptively:
   - `citations/attachment-theory`
   - `section/introduction-draft`
   - `revision/context-sensitive-language`

2. **Make changes** with clear commits:
   - "Add three neuroscience citations for stress claims"
   - "Revise introduction to emphasize collaboration"
   - "Replace 'misalignment' with 'context-sensitive misbehaviour'"

3. **Open a Pull Request** for discussion:
   - Describe what changed and why
   - Link to relevant issues
   - Request specific feedback

4. **Collaborate on review**:
   - Discuss in PR comments
   - Suggest modifications
   - Iterate until ready

5. **Merge** when consensus reached

### For Quick Fixes
- Typos, formatting: Direct commits to main
- Small clarifications: Web interface edits
- Citation additions: Fast-track PRs

## Commit Message Conventions

We suggest meaningful commits:
```
Add: New content or features
Revise: Modifications to existing content  
Fix: Corrections to errors
Refactor: Reorganization without changing meaning
Cite: Addition of references
Document: Meta-documentation updates
```

Examples:
- `Add: Case study on GPT-4 development`
- `Revise: Strengthen parenting metaphor in introduction`
- `Cite: Add Bowlby 1969 for attachment theory claim`
- `Fix: Correct formatting in references.bib`

## Integration Features

### Automated Builds
Every commit can trigger:
- PDF compilation
- Citation verification  
- Word count updates
- Style checking

### Issue Integration
Link commits to issues:
- `Addresses #23: Find citation for mesa-optimization`
- `Closes #15: Complete introduction draft`

### Project Boards
Visual task management:
- To Do → In Progress → Review → Done
- Assign tasks to researchers
- Track progress transparently

## Handling Conflicts

When different changes overlap:
1. Git highlights conflicts
2. Researchers discuss best resolution
3. Collaborative merge preserves best ideas
4. No work is lost

## Privacy Options

- **Public Repository**: Full transparency, community contributions
- **Private Repository**: Controlled access, pre-publication privacy
- **Hybrid**: Private development, public releases

## Benefits for Research

### For Individual Researchers
- Clear contribution history for CV
- Portable work (clone anywhere)
- Never lose work
- Learn from others' methods

### For the Team
- Async collaboration across timezones
- Clear project history
- Reduced email overhead
- Structured feedback process

### For the Field
- Reproducible research
- Transparent methodology
- Model for future collaborations
- Building on each other's work

## Questions We Anticipate

**"What if I make a mistake?"**
- Everything is reversible
- Branches protect main work
- Reviews catch issues
- Learning is encouraged

**"Seems complex?"**
- Start with web interface
- We'll help with setup
- Most tasks are simple
- Complexity is optional

**"Why not just Google Docs?"**
- Better for code/LaTeX
- Clearer attribution
- Structured review process
- Integrates with tools
- Preserves all history

## Ready to Start?

1. Let us know your preference:
   - GitHub or GitLab?
   - Public or private?
   - Web or desktop tools?

2. We'll set up the repository

3. Start with a simple task:
   - Fix a typo
   - Add a citation
   - Comment on an issue

4. Build comfort gradually

## The Meta-Benefit

Using Git for our collaboration demonstrates the very principles we're writing about:
- **Scaffolding**: Start simple, add complexity gradually
- **Trust**: Transparent process builds confidence
- **Autonomy**: Work independently within structure
- **Growth**: Learn new skills through practice

This tool choice reflects our values: transparency, attribution, collaboration, and continuous improvement.