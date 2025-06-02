# Project Structure Explanation

## Understanding Hidden vs Public Directories

This project uses dot-prefixed directories for **organizational purposes**:

### Directory Conventions
- **`.meta/`**: Internal documentation, fully tracked in git
- **`.archive/`**: Old versions, gitignored to reduce clutter
- **`build/`**: Generated files, gitignored except `.gitkeep`

### What Dot-Prefix Means
- **Organizational**: Indicates meta/internal content vs main content
- **Not Private**: Everything is transparent and version controlled
- **Convention**: Common practice for config/meta directories

### Directory Purposes

#### `docs/thynk-collaboration/`
- **Public collaboration space**
- Active working documents
- Correspondence with Thynk
- What we're currently using

#### `.meta/docs/`
- **Internal documentation**
- How we developed our approach
- Historical decision-making
- Process documentation
- Not secret, just not actively used

#### `.archive/`
- **Historical record with index**
- Documents project evolution
- Highlights key transitions
- Learning repository
- Contains README.md as navigable index

### Key Principle
We use directory organization to distinguish between:
- **Active** vs **Historical**
- **Working** vs **Reference**
- **Current** vs **Archived**

NOT between:
- Public vs Private
- Open vs Secret
- Shareable vs Hidden

Everything in this project can be shared. The structure simply helps us stay organized and focused.