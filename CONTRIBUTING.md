# Contributing Guidelines

## How to Contribute

We welcome contributions from all researchers. This project uses an open, collaborative model where all contributors work as peers.

## Getting Started

1. **Review the project** - Read `README.md` and `AUTHORS.md`
2. **Check current needs** - See `docs/claims-requiring-citations.md` for immediate tasks
3. **Understand our approach** - Review `.meta/docs/` for development philosophy if interested
4. **Join the research** - Work directly in `docs/research/`

## Git Workflow and Branching Strategy

### Repository Structure
This project is maintained in two locations:
- **Personal staging**: `jaesharp-github` - For experimental work and staging
- **Organization repository**: `safeconsent-github` - For collaborative development

### Forking Workflow (Recommended for External Contributors)
1. Fork the repository from SafeConsent organization to your GitHub account
2. Clone your fork locally:
   ```bash
   git clone git@github.com:YOUR-USERNAME/Parenting-Is-All-They-Need.git
   cd Parenting-Is-All-They-Need
   ```
3. Add the upstream remote:
   ```bash
   git remote add upstream git@github.com:SafeConsent/Parenting-Is-All-They-Need.git
   ```
4. Keep your fork synchronized:
   ```bash
   git fetch upstream
i   git checkout dev
   git merge upstream/dev
   ```

### Branch Structure (GitFlow)
We follow the GitFlow branching model:

- **`main`**: Production branch - only complete, reviewed content
  - Tagged releases for article versions
  - Never commit directly to main
- **`dev`**: Development branch - active work happens here
  - All feature branches merge into dev
  - Regular integration of completed features
- **`feature/*`**: Feature branches for new content
  - Named descriptively: `feature/neuroscience-citations`, `feature/case-study-updates`
  - Created from and merged back to dev
- **`release/*`**: Preparation for new releases
  - Created from dev when ready for publication
  - Only bug fixes and final edits
  - Merged to both main (tagged) and dev
- **`hotfix/*`**: Emergency fixes to production
  - Created from main for critical issues
  - Merged to both main and dev

### Creating a Feature Branch
```bash
git checkout dev
git pull upstream dev
git checkout -b feature/your-feature-name
```

### Commit Conventions
We use structured commits that explain WHY changes were made. The diff shows WHAT changed - your message should explain the reasoning. See `COMMIT-CONVENTIONS.md` for full details.

**Format**:
```
type(scope): brief summary of intent

Explain WHY this change was necessary, not what you did.
Focus on:
- The problem being solved
- The reasoning behind the approach
- The impact or benefit of the change

Co-authored-by: J Lynn <j+coauth.piaten+safeconsent@is-a.prompt-critical.engineer>
Co-authored-by: Claude <claude-opus-4-20250514.code+is+coauthoring.parenting-is-all-they-need@is-a.thynker.at.thynker.institute>
Signed-off-by: J Lynn <j@is-a.prompt-critical.engineer> (on behalf of safeconsent.ai)
```

Note: The email addresses reflect authors' roles in the project and should remain consistent across commits. See `COMMIT-CONVENTIONS.md` for the full list.

**Example**:
```
docs(citations): strengthen attachment theory claims with foundational sources

Our claims about early childhood development patterns lacked
authoritative support. These foundational works establish the
scientific basis for our parenting-based alignment approach.

The Bowlby and Ainsworth sources are considered definitive in
developmental psychology, giving credibility to our framework.

Co-authored-by: J Lynn <j+coauth.piaten+safeconsent@is-a.prompt-critical.engineer>
Co-authored-by: Claude <claude-opus-4-20250514.code+is+coauthoring.parenting-is-all-they-need@is-a.thynker.at.thynker.institute>
Signed-off-by: J Lynn <j@is-a.prompt-critical.engineer> (on behalf of safeconsent.ai)
```

### Pull Request Process
1. **Before creating a PR**:
   - Ensure your branch is up to date with `upstream/dev`
   - Run `make check` to verify formatting
   - Review changes for sensitive information
   - Ensure commits follow conventions with proper co-authorship

2. **Creating the PR**:
   - Push to your fork: `git push origin feature/your-feature-name`
   - Open PR against `SafeConsent/Parenting-Is-All-They-Need:dev`
   - Use a clear, descriptive title
   - Reference any related issues or claims
   - Describe what changed and why

3. **PR Description Template**:
   ```markdown
   ## Summary
   Brief description of changes

   ## Type of Change
   - [ ] Citation addition
   - [ ] Content revision
   - [ ] Technical improvement
   - [ ] Documentation update

   ## Related Claims/Issues
   - Addresses claim #X about...
   - Fixes issue #Y

   ## Checklist
   - [ ] Commits follow conventions
   - [ ] No sensitive information included
   - [ ] LaTeX compiles without errors
   - [ ] Changes reviewed for inclusive language
   ```

### Merging Strategy
- Feature branches to `dev`: Squash and merge for clean history
- Release branches to `main` and `dev`: No fast-forward merge
- Hotfix branches to `main` and `dev`: No fast-forward merge
- Always delete feature branches after merging
- Tag releases on `main` with semantic versioning (e.g., `v1.0.0`)

### Syncing Between Remotes
For maintainers working with both remotes:
```bash
# Push to personal staging
git push jaesharp-github dev

# After testing, push to organization
git push safeconsent-github dev
```

### Release Process
1. Create release branch from dev:
   ```bash
   git checkout -b release/v1.0.0 dev
   ```
2. Update version numbers and changelog
3. Fix any last-minute issues
4. Merge to main and tag:
   ```bash
   git checkout main
   git merge --no-ff release/v1.0.0
   git tag -a v1.0.0 -m "Release version 1.0.0"
   ```
5. Merge back to dev:
   ```bash
   git checkout dev
   git merge --no-ff release/v1.0.0
   ```

## Contribution Process

### For Citations
1. Create a feature branch from `dev`: `git checkout -b feature/citation-topic`
2. Find high-quality academic sources
3. Add PDFs/links to `docs/research/literature/`
4. Update `article/references.bib` with proper BibTeX entries
5. Note which claim the citation supports in your commit message
6. Submit PR with clear description of sources added

### For Writing
1. Create a feature branch from `dev`: `git checkout -b feature/section-name`
2. Work in `article/sections/`
3. Follow LaTeX formatting and existing style
4. Maintain consistent voice throughout
5. Use inclusive language (see our terminology guidelines)
6. Ensure your changes compile: `make pdf`
7. Submit PR with summary of changes

### For Ideas and Discussion
1. Open an issue for discussion before major changes
2. Reference issues in your PR
3. Be open to collaborative refinement
4. Focus on constructive dialogue

## Important Principles

- **No unnecessary distinctions** - All researchers are equal contributors
- **Open science** - Prefer open access sources and open tools
- **Attribution** - All contributions are credited

## Code of Conduct

- Treat all researchers with respect
- Focus on ideas, not categories
- Collaborate in good faith
- Share knowledge openly

## Questions?

See `.meta/docs/thynk-collaboration/` for the complete collaboration framework that guides this project.