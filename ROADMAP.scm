;; SPDX-License-Identifier: MIT
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell
;;; ROADMAP.scm — poly-ssg-mcp Development Roadmap

(define-module (poly-ssg-mcp roadmap)
  #:export (roadmap milestones priorities))

(define roadmap
  '((project . "poly-ssg-mcp")
    (current-version . "1.1.0")
    (last-updated . "2025-12-17")
    (summary . "Unified MCP server for 29 SSGs across 20 languages")))

(define milestones
  '(;; Completed Milestones
    (v1.0
     (status . "completed")
     (date . "2025-12-15")
     (features
      ("29 ReScript adapters for SSGs"
       "RSR compliance (Gold target)"
       "SHA-pinned GitHub Actions"
       "SPDX license headers"
       "Pre-commit hook for language policy"
       "Multi-platform CI pipeline"
       "Security policy and .well-known files")))

    (v1.1
     (status . "completed")
     (date . "2025-12-17")
     (features
      ("Corral (Pony) adapter added"
       "Security fixes and consistency updates"
       "CI workflow corrections"
       "SCM metadata updates")))

    ;; Current Focus
    (v1.2
     (status . "planned")
     (target . "Q1 2025")
     (features
      ("Comprehensive unit test suite"
       "Integration tests for each adapter"
       "Improved error handling"
       "Performance benchmarking")))

    ;; Future Milestones
    (v1.3
     (status . "planned")
     (target . "Q2 2025")
     (features
      ("HTTP/SSE transport mode"
       "WebSocket support"
       "Plugin system for custom adapters"
       "Configuration file support")))

    (v2.0
     (status . "planned")
     (target . "Q3 2025")
     (features
      ("Container support (Docker/Podman)"
       "Kubernetes operator"
       "Multi-SSG orchestration"
       "Watch mode improvements"
       "Incremental builds")))))

(define priorities
  '((high
     (("Unit tests for adapters" . "Critical for production reliability")
      ("Integration tests" . "Verify SSG command execution")
      ("Documentation" . "Usage examples and API reference")))

    (medium
     (("HTTP transport mode" . "Enable web-based MCP clients")
      ("Performance benchmarks" . "Identify bottlenecks")
      ("Error messages" . "Improve debugging experience")))

    (low
     (("Additional SSGs" . "Community-requested languages")
      ("Configuration file" . "User preferences persistence")
      ("VS Code extension" . "Editor integration")))))

;;; Language-Specific Roadmap
(define language-expansion
  '((potential-additions
     ("Ada" "Idris" "Agda" "Lean" "Coq" "Prolog" "Forth" "APL"))
    (criteria
     ("Must have functional/systems focus"
      "No mainstream JS/Python/Ruby"
      "Community interest"
      "Maintainer availability"))))

;;; Security Roadmap
(define security-roadmap
  '((completed
     ("Command sanitization"
      "Whitelist-only subcommands"
      "Deno.Command (no shell)"
      "CodeQL analysis"
      "Scorecard compliance"))
    (planned
     ("SBOM generation"
      "Signed releases"
      "Reproducible builds"
      "Dependency pinning audit"))))

;;; End of ROADMAP.scm
