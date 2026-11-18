---
name: fidelia
description: Find, play and queue music from the person's own library in Fidelia, the Mac music player, with Fidelia's MCP tools. Use when the person asks you to play, queue or find music, asks what's playing, or wants a playlist made from music they own.
---

Fidelia plays the music the person owns: their files, their Music library, any servers they added and the internet radio stations they keep. The `fidelia` MCP server's tools read that library and play from it.

- Start with plain words. `search` and `play` read a request as the person said it ("irish trad", "the album I got yesterday", "something by Planxty", "music from 2026") and report how they read it.
- Tags often say less than the person means: "Folk" where they mean Irish traditional music. When `search` finds too little, read `genres`, `artists_in_genre` or `composers`, use what you know about the music to choose, then play by `album_id`, artist or `track_ids`. When a piece was written is its composer's, not the recording's year.
- Ids are opaque. Pass back exactly what a reply gave you.
- Lists come in pages (`limit`, `offset`, then `next_offset` until the end). A library can run to 100,000 tracks, so ask for what you need.
- `play` replaces the queue. `queue` adds after the playing track (`position: "next"`) or at the end, without stopping what plays.
- Nothing here changes or removes a file.
- If a tool says Fidelia isn't answering, tell the person to open Fidelia and check that Settings ▸ Agent is on. If it says the token changed, they paste the new token from Settings ▸ Agent into the plugin's options.
