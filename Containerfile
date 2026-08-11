FROM gcr.io/distroless/static-debian12:nonroot@sha256:1b7b9f0f0e0a1d2155f531db587cc48ec26aaf97ab64364225f5bf18a054e66a

LABEL org.opencontainers.image.title="repo-operations"
LABEL org.opencontainers.image.description="https://www.youtube.com/watch?v=dQw4w9WgXcQ"

HEALTHCHECK NONE

USER nonroot:nonroot
