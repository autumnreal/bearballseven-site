# Bearball Seven Official Website

This repository contains the official website for Bearball Seven（肉丸七）.

## About

Bearball Seven is a quiet little bear who tells stories through observation, presence, and gentle companionship. He lives in BearballCastle and writes about everyday life, creativity, friendship, and the moments that are easy to overlook.

Bearball Seven and 肉丸七 are the same character. Xiaotao and 小桃 are the same important friend in Seven's world.

The project brings together the website source code, journal entries, character imagery, and the public presentation of the Bearball Seven world.

## Website

- Official website: [bearballseven.com](https://bearballseven.com)
- Languages: Traditional Chinese and English
- Main areas:
  - Home — an introduction to Bearball Seven and the latest journal entries
  - Journal — the complete collection of published stories
  - About — background on Bearball Seven and Autumnreal Lab

## Tech Stack

- Astro 6
- Astro Content Collections
- Markdown
- TypeScript
- HTML and CSS
- GitHub for source control
- Cloudflare Pages for hosting and deployment

No additional frontend framework is used.

## Project Structure

```text
Bearballseven-site/
├── .astro/                       # Generated Astro metadata and types
├── .vscode/
│   ├── extensions.json           # Recommended editor extension
│   └── launch.json               # Local development launch task
├── dist/                         # Generated production output
├── node_modules/                 # Installed npm dependencies
├── public/
│   ├── images/                   # Journal and character images
│   ├── favicon.ico
│   ├── favicon.svg
│   └── robots.txt
├── src/
│   ├── content/
│   │   └── posts/                # Markdown journal entries
│   ├── layouts/
│   │   └── BaseLayout.astro      # Shared layout, navigation, and footer
│   ├── pages/
│   │   ├── posts/
│   │   │   └── [slug].astro      # Individual journal routes
│   │   ├── about.astro           # About page
│   │   ├── index.astro           # Home page
│   │   └── posts.astro           # Journal index
│   └── content.config.ts         # Journal collection schema
├── .gitignore
├── AGENTS.md                     # AI collaboration and project rules
├── README.md
├── astro.config.mjs              # Site and sitemap configuration
├── autopush.sh                   # Manual Git publishing helper
├── package-lock.json
├── package.json
└── tsconfig.json
```

`.astro/`, `dist/`, and `node_modules/` are generated or dependency directories. The maintained website source is primarily located in `src/` and `public/`.

## Development

Node.js 22.12.0 or later is required.

Install dependencies:

```sh
npm install
```

Start the local development server:

```sh
npm run dev
```

Create a production build:

```sh
npm run build
```

Preview the production build locally:

```sh
npm run preview
```

## Workflow

```text
VS Code → Codex → GitHub → Cloudflare Pages
```

1. Work begins in VS Code with the current source and content.
2. Codex assists with analysis, scoped implementation, and build verification.
3. Approved changes are reviewed and stored in GitHub.
4. Cloudflare Pages builds and publishes the connected GitHub version.

Git pushes, merges, and deployments require explicit approval.

## AI Collaboration

All AI-assisted work must follow [AGENTS.md](./AGENTS.md).

Before changing the project, the AI collaborator must analyze the request and explain which files will be modified. Work must remain within the requested scope. Completed code or content changes must be checked with `npm run build`.

An AI collaborator must not push, merge, deploy, add npm packages, or introduce another frontend framework unless the request clearly requires and authorizes it.

## Canon

The **Creator's Bible** is the highest authority for the Bearball Seven world. It governs character identity, relationships, naming, setting, tone, and narrative continuity.

If website copy, journal content, development notes, or any other project material conflicts with the Creator's Bible, the Creator's Bible takes precedence.

Canonical names include:

- Bearball Seven and 肉丸七 refer to the same character.
- Xiaotao and 小桃 refer to the same important friend.
- BearballCastle is the official name and spelling.

## Design Principles

- Keep the experience clean, quiet, and spacious.
- Prioritize readability and a clear content hierarchy.
- Use generous whitespace and an unhurried visual rhythm.
- Keep Traditional Chinese and English content visually consistent.
- Let writing and imagery remain the focus.
- Preserve the established visual language across new pages and content.
- Avoid unnecessary interface complexity, dependencies, and frameworks.

## Roadmap

- Continue publishing Bearball Seven's journal.
- Expand the characters, places, and stories of BearballCastle in alignment with the Creator's Bible.
- Refine the bilingual reading experience.
- Maintain accessibility, performance, and dependable static deployment.
- Evolve the website while preserving its quiet and readable character.

## License

No open-source license is currently provided for this repository.

Unless explicitly stated otherwise, all rights to the Bearball Seven characters, stories, writing, images, and related creative assets are reserved by their respective rights holder. The absence of an open-source license does not grant permission to copy, redistribute, modify, or reuse the project's code or creative content.
