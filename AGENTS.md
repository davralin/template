# Repository Operations Standards

This repo records repository plumbing and inherited operational policy.

## Rules

- Read `adr/` before changing workflows, release policy, Renovate, container behavior, or deployment assumptions.
- Treat ADRs as inherited decisions. Do not delete ADRs to make them "not apply"; add a later ADR that supersedes, narrows, or marks a decision not applicable.
- Keep the repository app-agnostic. Do not add language-specific source, package files, or runtime scaffolding unless the repo itself needs them.

## Local Validation

- Run `docker build -f Containerfile -t repo-ops:local .` after changing `Containerfile` or image workflows.
- Check `git diff --check` before committing.

## Git

- Do not commit, amend, or push unless explicitly requested.
- If asked to rewrite the initial state, amend the root `Initial commit` and push with `--force-with-lease`.
