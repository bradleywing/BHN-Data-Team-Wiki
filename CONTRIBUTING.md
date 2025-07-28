# Contributing to the BHN Data Team Wiki

Thank you for supporting the documentation that powers our reporting systems and program logic. This wiki is version-controlled to preserve clarity, teachability, and continuity across platforms and contributors.

---

## Who Can Contribute

Contributors may include members of the BHN Data Team, program leadership, and other BHN staff working on reporting or documentation efforts. All updates are reviewed to ensure alignment with team conventions.

---

## Principles

- **DRY Compliance**: Don’t repeat documentation across files. Reference shared sources when possible.
- **Modularity**: Use clear folder structures and titles that isolate distinct logic, workflows, or standards.
- **Minimalist Comments**: SQL and code comments should be brief and point to corresponding markdown documentation. See `FAMCare-SQL-Toolkit` repo for this implementation.
- **Program vs Data Team Logic**: Place program-specific documentation under `docs/programs/`. Data Team logic, templates, and standards belong in `docs/data-team-processes/`.

---

## How to Contribute

1. **Branch from `main`** for any updates.
2. **Edit or create `.md` files** using markdown style that matches existing docs.
3. **Use frontmatter** to add metadata when relevant (e.g., `title`, `description`, `tags`).
4. **Include changelog notes** inline or via pull request descriptions.
5. **Open a pull request**, with clear explanation of what was changed and why.

If you're adding a new program folder, template, or reporting asset, coordinate with the Data Team first to avoid duplication and maintain navigability.

---

## Writing Standards

- Keep paragraphs short and scannable.
- Use headings (`##`, `###`) to break up content.
- Use bullet lists or tables where they support understanding.
- Avoid embedding images unless essential. Use `assets/images/` for uploads.
- Mermaid diagrams can be placed inline or saved in `assets/mermaid/`.

---

## Questions or Support

Contact the Data Team via Teams or email if you're unsure where something belongs or want help structuring a contribution.

Thanks for helping build documentation that teaches, adapts, and endures.
