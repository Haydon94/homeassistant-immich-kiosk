# Immich Kiosk for Home Assistant

<p align="center">
  <img src="homeassistant/immich_kiosk/icon.png" width="160" alt="Immich Kiosk for Home Assistant icon" />
</p>

A personal fork of [Immich Kiosk](https://github.com/damongolding/immich-kiosk)
by [Damon Golding](https://github.com/damongolding), packaged as a Home Assistant
OS add-on. Kiosk shows full-screen slideshows of your Immich photos on any
browser, tablet or photo frame.

> [!NOTE]
> This is an unofficial personal project, maintained for my own setup and not
> affiliated with Immich Kiosk or Immich. Please don't report problems with this
> add-on to them. Use it at your own risk.

## Install in Home Assistant

[![Add repository to Home Assistant](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2FHaydon94%2Fhomeassistant-immich-kiosk)

Or add it by hand:

1. In Home Assistant, go to **Settings → Add-ons → Add-on store → ⋮ →
   Repositories** and add `https://github.com/Haydon94/homeassistant-immich-kiosk`.
2. Install **Immich Kiosk**.
3. In the **Configuration** tab, enter your Immich URL and API key, then start
   it and open `http://<home-assistant-ip>:3000`.

The add-on's **Documentation** tab covers the rest. It runs on amd64 and aarch64.

## What this fork changes

Kiosk itself is unchanged and compiled from this fork's source. Everything
added lives in [`homeassistant/immich_kiosk/`](homeassistant/immich_kiosk) and
two workflows:

- **Add-on definition**: a Configuration tab for the common Kiosk settings,
  plus support for Kiosk's own `config.yaml` for everything else.
- **Start-up script** ([`run.sh`](homeassistant/immich_kiosk/run.sh)): turns the
  Configuration tab into Kiosk's `KIOSK_*` environment variables.
- **Build** ([`ha-addon-image.yml`](.github/workflows/ha-addon-image.yml)):
  compiles Kiosk and publishes the add-on image to
  `ghcr.io/haydon94/immich-kiosk`.
- **Automatic updates** ([`sync-upstream.yml`](.github/workflows/sync-upstream.yml)):
  checks daily for a new Immich Kiosk release, merges it, and rebuilds, so Home
  Assistant offers the update.

## Made with AI help

The Home Assistant packaging (add-on files, start-up script, build and sync
workflows, and this README) was written with help from Claude, an AI assistant.
None of Immich Kiosk's own code was written or changed by AI.

## Kiosk documentation

For what Kiosk can do and every configuration option, see the
[upstream README](https://github.com/damongolding/immich-kiosk#readme).

## Licence and credit

Immich Kiosk is licensed under [AGPL-3.0](LICENSE), and so is this fork. All
credit for Kiosk goes to Damon Golding and its contributors. If you find Kiosk
useful, consider [supporting the author](https://www.buymeacoffee.com/damongolding).
