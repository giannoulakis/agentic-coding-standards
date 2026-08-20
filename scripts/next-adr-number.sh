#!/usr/bin/env bash
# Print next zero-padded ADR number (e.g. 0004)
set -euo pipefail
dir="${1:-docs/decisions}"
max=0
shopt -s nullglob
for f in "$dir"/[0-9][0-9][0-9][0-9]-*.md; do
  n="${f##*/}"; n="${n%%-*}"
  [[ "$n" =~ ^[0-9]+$ ]] && (( n > max )) && max=$n
done
printf '%04d\n' $((max + 1))
