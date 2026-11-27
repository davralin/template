# New Repository Setup

[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/davralin/template/badge)](https://scorecard.dev/viewer/?uri=github.com/davralin/template)

This repository includes inherited operational standards and ADRs.

Use the ADRs first. Workflows and config follow repository decisions, not the other way around.

## Setup Order

1. Read `adr/`.
2. Add repo-specific ADRs for durable decisions.
3. Define artifacts and deployable process responsibilities.
4. Keep the active single-image workflow unless a later ADR justifies a different topology.
5. Replace this README with repo-specific usage and development docs.
6. Replace placeholders that depend on repo-specific architecture.
7. Update `.github/CODEOWNERS` for the repo owner/team.
8. Add app source, build, lint, test, package, and runtime files.
9. Keep Scorecard results published; use the included workflow when no central result is available.
10. Extend CodeQL or another suitable static-analysis workflow to cover the application's source languages.
11. Configure a ruleset for the default branch: require pull requests and applicable CI checks, prevent force pushes and deletion, and enable linear history.
12. Enable secret scanning, push protection, and the dependency graph where available.
13. Enroll the public FLOSS project in OpenSSF Best Practices and earn the Passing badge before its first supported release.

## Decisions To Record

- What the repo builds and releases.
- What deployable process responsibilities exist.
- Whether the repo publishes release container images.
- Release cadence and tag policy.
- Vulnerability scan posture.
- Renovate automerge posture.
- Deployment artifact policy.
- Applicable assurance badges and any justified exceptions.

## Before First Commit

- Every durable repo-specific choice is captured in an ADR.
- Inherited ADRs are accepted or superseded by later ADRs.
- Workflows reflect the ADR-defined deployable units.
- Placeholder values are replaced.
- No workflow or config exists without a repository decision behind it.

## Before First Supported Release

- Confirm the Scorecard badge resolves to a published result.
- A public FLOSS application has earned the OpenSSF Best Practices Passing badge.
- For release images covered by ADR 0003, verify the first release's SLSA provenance and then add the SLSA badge.
