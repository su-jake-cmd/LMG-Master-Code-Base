# Open Source Licensing Best Practices

## Corporate Policy Overview

This document defines licensing standards for all divisions. Each division has unique
requirements based on their business model and intellectual property needs.

---

## General Corporate Policy

**Preferred License: Apache 2.0**

The majority of the corporation develops software where patent protection is a priority.
Apache 2.0 is the corporate standard for the following reasons:

- Explicit patent grant — contributors cannot later sue users of the software for patent
  infringement related to their contributions
- Permissive — allows proprietary and commercial use without restriction
- Requires attribution and preservation of copyright/NOTICE files
- OSI and FSF approved, legally well-understood
- Compatible with most other open source licenses

### When Consuming Open Source (All Divisions)

| License | Safe to Use | Notes |
|---------|-------------|-------|
| MIT | Yes | Always safe |
| Apache 2.0 | Yes | Preferred — includes patent grant |
| BSD 2/3-Clause | Yes | Always safe |
| ISC | Yes | Equivalent to MIT |
| MPL 2.0 | Yes (with care) | File-level copyleft; do not modify MPL files without releasing changes |
| LGPL v2.1/v3 | Yes (with care) | Dynamic linking only; legal review recommended |
| GPL v2/v3 | Avoid | Strong copyleft; forces derivative works to be GPL |
| AGPL v3 | Avoid | GPL + network use triggers copyleft; prohibitive for SaaS/services |
| SSPL | Avoid | Not OSI-approved; extremely broad copyleft |
| Unlicensed code | Never | No rights granted; all rights reserved by default |

### When Publishing Open Source (General Divisions)

- **Default to Apache 2.0** for all externally released code
- Use MIT only for small utilities or libraries where simplicity is preferred over patent coverage
- Never release under GPL/AGPL unless explicitly approved by legal

---

## Monster Gaming Division

**Preferred License: MIT**

Monster Gaming develops commercial video games and game engines where different priorities
apply:

- Game source code is **proprietary** and will not be open sourced
- Third-party libraries and middleware are consumed heavily
- Copyleft licenses (GPL, LGPL) are dangerous in game development — linking GPL code
  into a proprietary game binary can legally require the entire game to be open sourced
- Patent grant language (Apache 2.0) is less critical than avoiding copyleft contamination
- The game development ecosystem broadly uses MIT, BSD, and Zlib

### Approved Licenses for Monster Gaming (Consuming)

| License | Safe to Use | Notes |
|---------|-------------|-------|
| MIT | Yes | Preferred — ubiquitous in game dev |
| BSD 2/3-Clause | Yes | Always safe |
| Zlib | Yes | Common in game libraries (SDL, zlib, etc.) |
| Apache 2.0 | Yes | Safe; note patent grant terms |
| ISC | Yes | Equivalent to MIT |
| Boost (BSL-1.0) | Yes | No attribution required in binaries — ideal for game distribution |
| MPL 2.0 | Yes (with care) | File-level only; do not modify covered files without releasing them |
| LGPL v2.1/v3 | Avoid | Dynamic linking may be acceptable but requires legal review |
| GPL v2/v3 | Never | Strong copyleft; incompatible with proprietary game distribution |
| AGPL v3 | Never | Extends copyleft to network/online play; never acceptable |
| CC (non-NC/SA) | Assets only | CC0 and CC-BY are fine for art/audio assets; avoid CC-SA and CC-NC |

### When Publishing Open Source (Monster Gaming)

Monster Gaming may release tools, SDKs, or game engines publicly. In those cases:

- **Default to MIT** — maximizes adoption by the game dev community
- Apache 2.0 is acceptable if patent coverage is desired
- Never use GPL/AGPL for publicly released game tooling (it discourages adoption)
- Zlib is acceptable for small utility libraries

### Common Game Dev Libraries and Their Licenses

| Library | License | Notes |
|---------|---------|-------|
| SDL2 / SDL3 | Zlib | Safe for proprietary games |
| OpenAL Soft | LGPL v2 | Dynamic link only; legal review recommended |
| Bullet Physics | Zlib | Safe |
| Box2D | MIT | Safe |
| Dear ImGui | MIT | Safe |
| Lua | MIT | Safe |
| OpenSSL | Apache 2.0 | Safe |
| FreeType | FTL (BSD-like) or GPL v2 | Use FTL variant |
| Ogg/Vorbis | BSD-3-Clause | Safe |
| GLM | MIT | Safe |

---

## Quick Reference

| Division | Own Code License | Avoid |
|----------|-----------------|-------|
| General Corporate | Apache 2.0 | GPL, AGPL |
| Monster Gaming | MIT | GPL, AGPL, LGPL (unless dynamic) |

---

## Legal Review Required For

- Any LGPL dependency in a statically linked build
- Any GPL dependency regardless of linking method
- Custom or non-OSI-approved licenses
- Dual-licensed libraries where commercial terms may apply
- Any license not listed in this document

When in doubt, open a ticket with the legal team before integrating a dependency.
