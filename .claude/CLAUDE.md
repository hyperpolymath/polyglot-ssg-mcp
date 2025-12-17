# Project Instructions

## Language Policy (RSR)

### ✅ CONVERSION COMPLETE: All code is now ReScript

- **REQUIRED**: ReScript for all code
- **FORBIDDEN**: TypeScript, new JavaScript files
- **EXCEPTION**: `main.js` entry shim (imports ReScript modules for Deno)
- **GENERATED**: `lib/es6/` contains compiled ReScript output

## File Structure

```
src/adapters/     — 29 ReScript SSG adapters
src/bindings/     — Deno/MCP API bindings
src/transport/    — HTTP transport
src/Server.res    — MCP server logic
src/Main.res      — ReScript entry point
main.js           — Entry shim (imports compiled modules)
```

## Build Commands

```bash
deno task res:build   # Build ReScript
deno task start       # Start MCP server (STDIO mode)
deno task serve       # Start HTTP mode
```
