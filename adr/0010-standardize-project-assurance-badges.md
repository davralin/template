# 0010. Standardize Project Assurance Badges

Date: 2026-11-24

## Status

Accepted

## Context

Project badges give users a concise way to find current evidence about repository practices and released artifacts. They are useful only when the underlying result is maintained and the badge is applicable to the project.

The template already requires SLSA Level 3 provenance for release images, but it does not standardize how projects expose that or broader project security posture in their READMEs.

## Decision

Public software repositories derived from this template must retain the applicable assurance badges near the top of their README:

- **OpenSSF Scorecard:** Display the official Scorecard badge linked to the project's Scorecard viewer, and ensure a result is published for the repository. Use the official Scorecard Action with `publish_results: true` when the repository has no result from Scorecard's central scan. This ADR does not set an aggregate-score threshold.
- **OpenSSF Best Practices:** Public FLOSS application projects must earn and display at least the Passing badge before their first supported release. Higher levels are encouraged but not required.
- **SLSA Level 3:** Repositories publishing release artifacts covered by ADR 0003 must display the SLSA 3 badge after a release has verifiable SLSA Level 3 provenance. Repositories for which ADR 0003 is not applicable must document that in a repo-specific ADR and omit this badge.

The repository template may use its own Scorecard badge and publishing workflow. When adapting it to another repository, update the badge URL to that repository and replace the OpenSSF Best Practices project-ID placeholder. Do not display an assurance badge as earned until its live result or assessment supports the claim.

The shared template scans GitHub Actions with CodeQL; derived application repositories must include static analysis appropriate to their source languages. Maintainers should review published Scorecard findings and address critical issues; they must not game the aggregate score by weakening checks or adding inapplicable tooling.

GitHub repository settings are part of the assurance posture. Configure a default-branch ruleset that requires pull requests and applicable CI checks, blocks force pushes and branch deletion, and enables linear history. Enable secret scanning, push protection, and the dependency graph where available.

A CI status badge is useful but is not part of this assurance-badge set. Repo-specific exceptions to an applicable badge requirement must be recorded in a later ADR.

## Consequences

README badges will provide consistent, externally verifiable entry points to project and artifact security information.

Maintainers must keep Best Practices assessments current, and must preserve applicable badges when replacing the template README.

Scorecard findings that depend on repository settings or application-specific source analysis require repo-specific setup; the template cannot resolve them solely through shared files.
