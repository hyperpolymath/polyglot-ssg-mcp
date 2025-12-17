# Security Policy

See [SECURITY.adoc](SECURITY.adoc) for the detailed security policy.

## Supported Versions

| Version | Supported |
| ------- | --------- |
| 1.x     | Yes       |

## Reporting a Vulnerability

Please report security vulnerabilities via:

- GitHub Issues: https://github.com/hyperpolymath/polyglot-ssg-mcp/issues
- Email: See .well-known/security.txt

## Security Model

- All SSG commands executed via `Deno.Command` (not shell)
- Whitelist approach for allowed subcommands
- Argument sanitization before execution
- No shell metacharacters allowed
