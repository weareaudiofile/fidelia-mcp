# Glama's build check only: runs the real bridge (server/index.js) against a stand-in for Fidelia's
# endpoint (glama/), because Fidelia's MCP server runs inside the Fidelia app for Mac.
FROM node:22-alpine
WORKDIR /app
COPY server ./server
COPY glama ./glama
CMD ["node", "glama/run.js"]
