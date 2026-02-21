#!/bin/bash
set -euo pipefail

# Only run in remote (Claude Code on the web) environments
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

# C / C++ / Assembly toolchain setup
# Pre-installed: gcc, g++, clang, clang-format, clang-tidy, as (GNU assembler),
#                ld, make, cmake, gdb
# Installed here: nasm (Netwide Assembler - x86/x86_64 dedicated assembler)

apt-get install -y --no-install-recommends nasm

echo "Session start hook complete. C/C++/ASM toolchain ready."
