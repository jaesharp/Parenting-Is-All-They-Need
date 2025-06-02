# Commit Conventions and Email Format

> **⚠️ IMPORTANT**: Remember to update the draft status in README.md as the project progresses from pre-preprint → preprint → submission → publication.

This document captures the structured email format used for commits in this repository, developed through collaborative discussion between the co-authors.

## Language Guidelines

In alignment with our paper's values, we avoid creating artificial distinctions between contributors based on their substrate. Use inclusive language that treats all authors as equal collaborators:

- ❌ "human and AI co-authors"
- ✅ "co-authors" or "collaborators"
- ❌ "J (human) and Claude (AI)"  
- ✅ "J and Claude"

The structured email format already encodes necessary metadata without requiring divisive language in commit messages.

## Email Format Pattern

### General Structure
```
entity+verb+object+qualifier+qualifier+...@domain
```

### Component Breakdown

1. **Entity** (who): The actor - could be a person, AI model, or compound identity
2. **Verb** (action): What they're doing (e.g., `is+coauthoring`)
3. **Object** (what): The target of the action (e.g., `parenting-is-all-they-need`)
4. **Qualifiers** (context): Additional context, roles, relationships
5. **Domain**: Identity assertion domain

### Syntax Rules
- Plus signs (`+`) separate major semantic units
- Dots (`.`) create sub-phrases within units (compound structures)
- Hyphens (`-`) join words within a single concept
- Prepositions (`is`, `as`, `with`, `and`) are followed by `+`

## Specific Formats Used

### For J
```
j+coauth.piath+safeconsent@is-a.prompt-critical.engineer
```

**Breakdown:**
- `j` - entity
- `coauth.piath` - abbreviated: coauthoring "Parenting Is All They Need"
- `safeconsent` - organizational affiliation
- `@is-a.prompt-critical.engineer` - domain with identity assertion

**Note**: This format was shortened to fit within GitHub's 100-character email limit while preserving the essential metadata.

### For Claude
```
claude-opus-4-20250514.code+is+coauthoring.parenting-is-all-they-need@is-a.thynker.at.thynker.institute
```

**Breakdown:**
- `claude-opus-4-20250514.code` - compound entity (model.interface)
  - `claude-opus-4-20250514` - exact API model identifier
  - `code` - interface (Claude Code)
- `is+coauthoring.parenting-is-all-they-need` - action and object
- `@is-a.thynker.at.thynker.institute` - layered identity domain

## Git Configuration

### Author Configuration
```bash
git config user.name "J"
git config user.email "j@is-a.prompt-critical.engineer"
```

**Note**: We use the simple email for the committer (to enable GPG signing) while the detailed metadata goes in Co-authored-by lines.

### GPG Signing
```bash
git config user.signingkey "EFEC5BA4DE1218FAF3C674ADE44826E77ACA71EE"
git config commit.gpgsign true
git config tag.gpgsign true
```

## Commit Template

### Initial Commit Example
```
Initial commit

Co-authored-by: J Lynn <j+coauth.piath+safeconsent@is-a.prompt-critical.engineer>
Co-authored-by: Claude <claude-opus-4-20250514.code+is+coauthoring.parenting-is-all-they-need@is-a.thynker.at.thynker.institute>
Signed-off-by: J Lynn <j@is-a.prompt-critical.engineer> (on behalf of safeconsent.ai)
```

## Key Principles

1. **Self-Documenting**: Email addresses encode metadata about collaboration context, roles, and relationships
2. **Reproducibility**: Model versions are explicitly captured in the email structure
3. **Attribution**: Clear attribution of all contributions
4. **Structured Data**: Email addresses serve as parseable structured data

## Notes on Evolution

- Initially considered platform-specific identifiers (e.g., `anthropic`) but removed to emphasize Thynker Institute's responsibility for reproducibility
- Simplified display names to avoid redundancy (just "J" and "Claude" since metadata is in the email)
- Removed redundant relationship qualifiers (e.g., `with+j` for Claude) when the context is clear
- Shortened J's email to fit GitHub's 100-character limit while preserving essential metadata

## Future Commits

For consistency, all future commits should follow this pattern, updating the action/object as appropriate while maintaining the entity structure.

### Example for a feature commit:
```
Co-authored-by: J Lynn <j+coauth.piath+safeconsent@is-a.prompt-critical.engineer>
```

**Note**: The shortened format preserves the key information while staying within GitHub's character limits.

---

*This convention was developed collaboratively to create meaningful, parseable commit attribution that preserves the full context of collaboration between all contributors.*