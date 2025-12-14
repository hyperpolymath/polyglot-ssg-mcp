# JavaScript → ReScript Conversion Status

This repo uses ReScript for core logic with JavaScript entry points.

## Architecture

```
src/                         <- ReScript source (KEEP)
  Adapter.res                <- Core types
  Executor.res               <- Command execution
  bindings/Deno.res          <- Deno API bindings
lib/es6/                     <- Compiled output (GENERATED)
adapters/*.js                <- TO CONVERT (28 adapters)
server.js                    <- Entry point (KEEP as thin wrapper)
transport/*.js               <- TO CONVERT
index.js                     <- Legacy entry (REMOVE after server.js stable)
```

## Files to Convert to ReScript

### Priority 1: Adapters by Language (28 total)

**Rust SSGs**
- [ ] `adapters/zola.js` → `src/adapters/Zola.res`
- [ ] `adapters/cobalt.js` → `src/adapters/Cobalt.res`
- [ ] `adapters/mdbook.js` → `src/adapters/Mdbook.res`

**Elixir SSGs**
- [ ] `adapters/serum.js` → `src/adapters/Serum.res`
- [ ] `adapters/nimble-publisher.js` → `src/adapters/NimblePublisher.res`
- [ ] `adapters/tableau.js` → `src/adapters/Tableau.res`

**Haskell SSGs**
- [ ] `adapters/hakyll.js` → `src/adapters/Hakyll.res`
- [ ] `adapters/ema.js` → `src/adapters/Ema.res`

**OCaml SSGs**
- [ ] `adapters/yocaml.js` → `src/adapters/Yocaml.res`

**F# SSGs**
- [ ] `adapters/fornax.js` → `src/adapters/Fornax.res`

**Swift SSGs**
- [ ] `adapters/publish.js` → `src/adapters/Publish.res`

**Common Lisp SSGs**
- [ ] `adapters/coleslaw.js` → `src/adapters/Coleslaw.res`

**Kotlin SSGs**
- [ ] `adapters/orchid.js` → `src/adapters/Orchid.res`

**Julia SSGs**
- [ ] `adapters/franklin.js` → `src/adapters/Franklin.res`
- [ ] `adapters/staticwebpages.js` → `src/adapters/Staticwebpages.res`
- [ ] `adapters/documenter.js` → `src/adapters/Documenter.res`

**Clojure SSGs**
- [ ] `adapters/cryogen.js` → `src/adapters/Cryogen.res`
- [ ] `adapters/perun.js` → `src/adapters/Perun.res`
- [ ] `adapters/babashka.js` → `src/adapters/Babashka.res`

**Scala SSGs**
- [ ] `adapters/laika.js` → `src/adapters/Laika.res`
- [ ] `adapters/scalatex.js` → `src/adapters/Scalatex.res`

**Erlang SSGs**
- [ ] `adapters/zotonic.js` → `src/adapters/Zotonic.res`

**Racket SSGs**
- [ ] `adapters/pollen.js` → `src/adapters/Pollen.res`
- [ ] `adapters/frog.js` → `src/adapters/Frog.res`

**D SSGs**
- [ ] `adapters/reggae.js` → `src/adapters/Reggae.res`

**Tcl SSGs**
- [ ] `adapters/wub.js` → `src/adapters/Wub.res`

**Crystal SSGs**
- [ ] `adapters/marmot.js` → `src/adapters/Marmot.res`

**Nim SSGs**
- [ ] `adapters/nimrod.js` → `src/adapters/Nimrod.res`

### Priority 2: Transport (HTTP mode)
- [ ] `transport/streamable-http.js` → `src/transport/StreamableHttp.res`

### Keep as JavaScript (thin wrappers)
- `server.js` - Entry point, imports ReScript modules
- `index.js` - Legacy entry (deprecate after migration)

## Policy

- **REQUIRED**: ReScript for all NEW business logic
- **FORBIDDEN**: New TypeScript files
- **ALLOWED**: JavaScript entry points that import ReScript
- **ALLOWED**: Generated `.res.js` files in lib/es6/

## Build Commands

```bash
# Build ReScript
deno task res:build

# Watch mode
deno task res:watch

# Clean build
deno task res:clean
```
