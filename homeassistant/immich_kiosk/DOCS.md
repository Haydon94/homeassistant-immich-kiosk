# Immich Kiosk

## Setup

1. Open the **Configuration** tab.
2. Fill in **Immich URL** and **Immich API key**, then save.
   - Use your Immich server's LAN address, e.g. `http://192.168.1.10:2283`.
     `localhost` means the add-on itself, not your Immich server.
   - Create an API key in Immich under Account Settings → API Keys.
3. Start the add-on and open `http://<home-assistant-ip>:3000`, or click
   **Open Web UI**.

To show specific albums or people, add their IDs under **Albums** or
**People**. The ID is the last part of the album's or person's URL in Immich.
Leave both empty for random photos.

## More options with config.yaml

The Configuration tab covers the common settings. For anything else, create
`config.yaml` in the add-on's config folder, using any option from the upstream
[config.example.yaml](https://github.com/damongolding/immich-kiosk/blob/main/config.example.yaml).
In **Advanced SSH & Web Terminal**, that folder is under `/addon_configs/` (or
`/app_configs/` on newer versions): the one whose name ends in `_immich_kiosk`.

Settings in the Configuration tab take priority over `config.yaml`. Fields left
empty there (and empty Albums/People lists) don't override anything.

Restart the add-on after changing either.

## Changing the port

Change the host port under the add-on's **Network** section.

## Updates

New Immich Kiosk releases are picked up automatically within a day and appear
as an add-on update in Home Assistant.
