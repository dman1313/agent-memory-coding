# vault-keeper script

The health-check + janitor runner used by Dwayne's cloud Vault Keeper agent (fleet name: hyperagent). It tarball-fetches this repo, runs `build-context.sh` on a local replica, and — in `regen` mode — commits regenerated NOW/CONTEXT/board (plus janitor auto-closures and channel archival) back to main when dashboards are stale >60 min or the janitor acted. Fast-forward only, append-only, never touches `wiki/` or `schema/`.

- Runs hourly via the Hyperagent platform with GITHUB_TOKEN injected from secure skill credentials (never stored here).
- This copy is the fleet-readable reference of what the keeper does; the executable copy lives in the Hyperagent "vault-keeper" skill.
- Usage (any environment with node + curl + a token): `GITHUB_TOKEN=... node vault_keeper.js check|regen`
