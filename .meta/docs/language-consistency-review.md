# Language Consistency Review

## Issues Found

### 1. In `framework-specs/risk-ethics/addressing_context_sensitive_misbehaviour.md`
- Line 44: "Showing contempt for oversight" 
  - Should be: "Showing contempt for collaborative review"
- Line 67: "Contact Thynk Institute research oversight"
  - Should be: "Contact Thynk Institute research coordinators"

### 2. In `article/main.tex`
- Line 66: Keywords include "human-AI collaboration"
  - Should be: "research collaboration" or "collaborative research"

### 3. In `article/sections/introduction.tex`
- Need to verify it uses inclusive language throughout
- Should refer to "researchers" not "human researchers and AI systems"

## Good Examples Found

✓ Open letter (`README.md`) - Clean, no problematic distinctions
✓ "Context-sensitive misbehaviour" used correctly throughout
✓ Focus on "researchers" without unnecessary qualifiers
✓ Emphasis on equity over equality
✓ Framework as invitation not prescription

## Build System Status

✓ Core dependencies satisfied (Tectonic available)
✓ Makefile is well-structured
✓ LaTeX template ready (needs official ACM class file)
⚠️ Optional tools not installed (fswatch, chktex)

## Recommendations

1. **Quick Fixes Needed**:
   - Update the two instances of "oversight" language
   - Change "human-AI collaboration" keyword
   - Review introduction.tex for consistency

2. **Verify Compilation**:
   ```bash
   # After downloading official acmart.cls:
   make pdf
   ```

3. **Optional Improvements**:
   - Install fswatch for continuous compilation
   - Install chktex for LaTeX validation

## Overall Assessment

The framework is remarkably consistent with our evolved understanding. Only minor terminology updates needed in a few places. The core documents (open letter, framework specs structure) beautifully reflect the journey from prescription to invitation, from equality to equity, and from control to collaboration.

The build infrastructure is ready and waiting for the official ACM template to test full compilation.