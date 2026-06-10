---
type: entity
created: 2026-06-10
sources:
  - "[[sources/symposium-rust-agents]]"
tags: project
aliases: ["Symposium", "symposium toolchain"]
---

# Symposium

## Basic Information

- **Type:** project (open-source Rust + AI agent toolchain)
- **Key figure:** Nico (lead Rust designer since 2011, senior principal engineer at Amazon)
- **Context:** Paris AI conference, May 2026

## Description

Symposium is an agent-targeted Rust toolchain that enables the Rust community (compiler contributors, crate authors) to provide up-to-date, crate-specific guidance directly to AI agents — bypassing the stale training data problem. Installed via Cargo, it configures agent hooks and provides "skills" (markdown files with metadata) that crate authors write once and that work across multiple agents (Codex, Claude, Qwen, etc.). Addresses the gap that no NPM/Cargo-equivalent marketplace exists for AI agent guidance.

## Related Entities

- [[entities/dwayne-primeau|Dwayne Primeau]] — attended the Paris conference where this was presented

## Related Concepts

- [[concepts/agentic-ai|Agentic AI]]

## Mentions in Source

> "Symposium's goal: an agent-targeted Rust toolchain enabling the Rust community (compiler contributors, library authors) to provide up-to-date guidance and crate-specific know-how directly to agents."

> "Library authors provide extensions/services in a standard way. Users choose agents. Symposium converts/bridges between differing hook formats and conventions."
