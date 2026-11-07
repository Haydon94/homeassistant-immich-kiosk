# Immich Kiosk

Kiosk reads its settings from a `config.yaml` file. This add-on gives it its
own folder for that file.

## First-time setup

1. Install the add-on but don't start it yet.
2. Open the add-on's config folder. In **Advanced SSH & Web Terminal** it's
   under `/addon_configs/` (or `/app_configs/` on newer versions): the
   folder whose name ends in `_immich_kiosk`. (File editor or Filebrowser
   work too, if they're set up to see that folder.)
3. Create `config.yaml` in that folder with at least:

   ```yaml
   immich_url: "http://192.168.1.10:2283"
   immich_api_key: "your-immich-api-key"
   ```

   Every other option from the upstream
   [config.example.yaml](https://github.com/damongolding/immich-kiosk/blob/main/config.example.yaml)
   can go in the same file.
4. Start the add-on and open `http://<home-assistant-ip>:3000`.

Use your Immich server's LAN address (or its public URL) for `immich_url`;
`localhost` here means the add-on itself, not your Immich server.

## Changing the port

Change the host port under the add-on's **Network** section.
