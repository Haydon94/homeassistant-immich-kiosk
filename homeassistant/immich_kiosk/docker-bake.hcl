# Run from the repo root:  docker buildx bake -f homeassistant/immich_kiosk/docker-bake.hcl --push addon
variable "VERSION" {}
variable "IMAGE" {}
variable "SOURCE" {}

variable "PLATFORMS" {
  default = ["linux/amd64", "linux/arm64"]
}

# Kiosk compiled from this repo using the upstream Dockerfile, unchanged.
target "kiosk" {
  context    = "."
  dockerfile = "Dockerfile"
  args       = { VERSION = VERSION }
  platforms  = PLATFORMS
}

# The image Home Assistant runs: Kiosk plus run.sh.
target "addon" {
  context   = "homeassistant/immich_kiosk"
  contexts  = { kiosk = "target:kiosk" }
  platforms = PLATFORMS
  tags      = ["${IMAGE}:${VERSION}", "${IMAGE}:latest"]
  labels = {
    "org.opencontainers.image.source"  = SOURCE
    "org.opencontainers.image.version" = VERSION
  }
}
