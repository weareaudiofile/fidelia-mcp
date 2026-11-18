# Fidelia for Claude Code

![Fidelia](assets/fidelia-icon-512.png)

Play and explore the music you own in [Fidelia](https://audiofile.engineering/fidelia), an audiophile music player for Mac, by asking Claude Code. This plugin adds Fidelia's own MCP server and a skill that teaches Claude how to use it.

## What it runs and where it connects

The plugin runs one small Node.js script, `server/index.js`, the same bridge the Fidelia extension for Claude Desktop runs. It uses only Node's own modules. It passes each message between Claude Code and Fidelia at 127.0.0.1, on the port in its **Fidelia port** option (38412 unless you changed it in Fidelia ▸ Settings ▸ Agent), with the token from its **Fidelia token** option in the `Authorization` header. When Fidelia isn't running, it opens it with no window (`open -g -b com.audiofile.fidelia --args -agent.headless YES`) and tries again for up to 45 seconds. It sends nothing anywhere else. Claude Code keeps the token in your system's secure storage.

## What you need

Node.js on your `PATH` for the bridge. Fidelia for Mac 2.13 or later, with Settings ▸ Agent ▸ **Let AI apps use Fidelia** turned on. The same page shows your token; paste it when Claude Code asks for it.

## Install

In Claude Code:

```text
/plugin install fidelia --marketplace weareaudiofile/fidelia-mcp
```

Claude Code asks for the token from Fidelia's Settings ▸ Agent, and for Fidelia's port (keep 38412 unless you changed it there).

## Things to ask

- "Play some irish trad."
- "Put on the album I got yesterday."
- "Make a playlist of everything I added last month."

## What Claude can and can't do

Claude can read your Fidelia library (titles, artists, albums, genres, composers, years, when you added each one, your playlists, your radio stations and what's playing), play, queue, pause and skip, set the volume, shuffle and repeat, and make playlists or add to them. It never learns where your files are and can't change or delete them. What it reads goes to Anthropic as part of your conversation, under Claude's terms.

Privacy policy: <https://audiofile.engineering/privacy> · Support: <https://audiofile.engineering/support> · More: <https://github.com/weareaudiofile/fidelia-mcp>
