# Home Assistant wrapper image. "kiosk" is the image built from this repo's
# root Dockerfile (wired up in docker-bake.hcl), so Kiosk itself is compiled
# from the fork's source. This layer only adds run.sh for the Configuration tab.
FROM alpine:3

RUN apk add --no-cache ca-certificates jq tzdata

COPY --from=kiosk /kiosk /kiosk
COPY --chmod=755 run.sh /run.sh

WORKDIR /
ENTRYPOINT ["/run.sh"]
