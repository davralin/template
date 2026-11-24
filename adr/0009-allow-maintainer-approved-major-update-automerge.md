# 0009. Allow Maintainer-Approved Major Update Automerge

Date: 2026-11-24

## Status

Accepted

## Context

ADR 0005 requires review for major dependency updates. Some repositories may choose to automate these updates when their test suite provides sufficient confidence for the dependencies they use.

The suitability of a test suite depends on the repository and its dependencies. A single repository-wide definition would be too prescriptive.

## Decision

Major dependency updates may be configured for automerge when repository maintainers consider the available test suite sufficient for those updates.

Repository maintainers decide what test coverage is sufficient; this ADR does not prescribe that definition. When major-update automerge is enabled, it should be gated on the repository's configured checks passing.

Repositories that do not opt into major-update automerge continue to require review, as described in ADR 0005.

This ADR supersedes ADR 0005's unconditional review requirement for major updates.

## Consequences

Repositories can automate major dependency updates when maintainers consider their test coverage adequate.

The test-sufficiency decision and required checks remain repository-specific.
