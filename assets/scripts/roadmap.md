# BHN Data Team R Scripts Roadmap

## Phase 1: Script Tagging & Indexing

**Goal:** Surface script metadata for visibility, onboarding, and audit.

### Phase 1 Actions

- Standardize tag blocks across all `.R` scripts
- Run the parser regularly to generate a `script_index.md` or `.csv`
- Include fields like `Status`, `Tags`, `Last Updated`, and `Description`
- Add a collapsible section in your repo README or wiki linking to this index

## Phase 2: Documentation Integration

**Goal:** Connect script metadata to broader documentation assets.

### Phase 2 Actions

- Link each script’s tag block to its corresponding Markdown doc (if applicable)
- Add a `Doc Link:` field in the tag block for cross-referencing
- Create a `scripts/README.md` that explains tagging conventions and usage
- Use the tag parser to flag undocumented or orphaned scripts

## Phase 3: Audit Hooks & Status Dashboards

**Goal:** Track script lifecycle and contributor activity.

### Phase 3 Actions

- Add a `Status:` field with controlled vocab (`Draft`, `Pilot`, `Ready`, `Deprecated`)
- Build a dashboard (Power BI or R Shiny) showing:
  - Scripts by status
  - Last updated timestamps
  - Tag distribution (e.g. diagnostics, parser, onboarding)
- Highlight stale or untagged scripts for review

## Phase 4: Contributor Empowerment

**Goal:** Make it easy for others to contribute, refine, and document.

### Phase 4 Actions

- Create a `script_template.R` with a pre-filled tag block
- Add a `CONTRIBUTING.md` section on how to tag and document scripts
- Encourage co-authorship by adding `Author:` and `Reviewed By:` fields
- Use the tag parser to surface scripts marked `Pilot` for team feedback

## Phase 5: Automation & Sustainability

**Goal:** Reduce manual overhead and keep the system future-proof.

### Phase 5 Actions

- Automate tag parsing via GitHub Actions or RStudio Connect
- Auto-generate script index on commit or weekly cron
- Validate tag blocks with a linter or pre-commit hook
- Archive deprecated scripts with clear metadata and rationale

## Bonus: Metadata as a Teaching Tool

- Use tag blocks to explain logic decisions, edge case handling, or audit hooks
- Treat `Description:` as a mini-narrative for onboarding new analysts
- Surface scripts with `Status: Pilot` in onboarding docs to invite collaboration
