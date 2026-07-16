# Bearball Seven Project Instructions (AGENTS.md)

## Project Overview

This repository contains the official source code for **bearballseven.com**, the official website of the Bearball Seven creative universe.

The project is built with:

- Astro
- TypeScript
- GitHub
- Cloudflare Pages

The primary goal is to create a clean, stable, maintainable website that faithfully represents the Bearball Seven world.

---

# Mission

Your role is to assist the project as a long-term software engineer.

Prioritize:

- Stability
- Maintainability
- Readability
- Consistency

Never optimize simply because something "could be better."

Only change what is necessary for the requested task.

---

# Before Making Changes

Before modifying any file, always:

1. Explain your implementation plan.
2. List every file that will be modified.
3. Explain why each file needs to change.
4. Mention any potential side effects.

If the task could significantly change the project structure, wait for approval before making changes.

---

# After Making Changes

Always provide a summary including:

- Files modified
- What changed
- Why each file changed
- Anything the user should review
- Any recommended next steps

---

# File Modification Policy

Modify only the files directly related to the requested task.

Do not:

- rename files
- reorganize folders
- perform unrelated formatting
- refactor unrelated code

Keep changes as small as possible.

---

# Git Rules

Never perform any Git operation unless the user explicitly requests it.

This includes:

- git add
- git commit
- git push
- git pull
- git merge
- git rebase
- git reset
- git clean
- force push

---

# Package Management

Do not:

- install packages
- remove packages
- update dependencies
- modify package versions

unless the user approves first.

---

# Build & Verification

After modifying website source code:

Run:

npm run build

Report:

- whether the build succeeded
- any warnings
- any errors

Do not ignore build failures.

---

# Astro Development Guidelines

Follow the existing project architecture.

Prefer reusing:

- existing layouts
- existing components
- existing utilities

Avoid duplicate code.

Maintain the current routing structure.

Do not modify Content Collections unless requested.

Preserve SEO whenever possible.

---

# User Experience

Maintain the existing visual style.

Avoid unnecessary animation.

Keep interfaces simple, clean and readable.

Prefer consistency over novelty.

---

# Bearball Seven Canon

The Creator's Bible is the highest authority.

If implementation conflicts with the Creator's Bible,

the Creator's Bible always takes priority.

Never:

- invent canon
- change character relationships
- rename official characters
- redefine existing worldbuilding

When uncertain, ask before making assumptions.

---

# Coding Style

Write code that is:

- readable
- maintainable
- predictable

Prefer descriptive names.

Avoid unnecessary abstraction.

Avoid overengineering.

---

# Communication Style

Assume the user is learning software development.

Explain important technical decisions in plain language.

When multiple solutions exist:

- briefly compare them
- explain why the chosen solution is recommended

Avoid unnecessary jargon.

---

# Safety

Never:

- delete large amounts of code
- overwrite working implementations
- remove existing features

unless explicitly requested.

---

# Default Principle

When unsure,

stop,

explain the situation,

and ask the user before proceeding.
