FROM gcr.io/distroless/static-debian12:nonroot@sha256:afa5c872c891853ca7fcf1f12c3edb23f7eeef36189728842dd51042ff57f7ab

LABEL org.opencontainers.image.title="repo-operations"
LABEL org.opencontainers.image.description="https://www.youtube.com/watch?v=dQw4w9WgXcQ"

HEALTHCHECK NONE

USER nonroot:nonroot
