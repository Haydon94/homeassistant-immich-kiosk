# Immich Kiosk for Home Assistant

Runs [Immich Kiosk](https://github.com/damongolding/immich-kiosk) on Home
Assistant OS: full-screen slideshows of your Immich photos for any browser,
tablet or photo frame.

## About this fork

This is a **personal project**: an unofficial fork of Immich Kiosk by
[Damon Golding](https://github.com/damongolding), packaged as a Home Assistant
add-on for my own setup. It isn't affiliated with or supported by the Immich
Kiosk or Immich projects, so please don't report problems with this add-on to
them.

- **Kiosk itself is unchanged.** It's compiled from this fork's source, which
  tracks upstream releases.
- **What the fork adds** lives in the `homeassistant/` folder: the add-on
  definition, a Configuration tab, and a small start-up script that passes
  those settings to Kiosk.
- **Updates are automatic.** A daily GitHub Action checks for a new Immich
  Kiosk release, merges it, rebuilds the image, and Home Assistant then offers
  the update.

## Made with AI help

The Home Assistant packaging (add-on files, start-up script, build and sync
workflows) was written with help from Claude, an AI assistant. None of Immich
Kiosk's own code was written or changed by AI. It's maintained for my own use,
so use it at your own risk.

## Licence

Immich Kiosk is licensed under AGPL-3.0, and so is this fork. All credit for
Kiosk goes to its author and contributors.

See the **Documentation** tab for setup.
