#!/usr/bin/env sh
# Formats stdin with Biome only if a biome.json(c) exists in the file's project root.
# Otherwise passes the input through untouched.

path="$1"
dir="$(dirname "$path")"

# Make the path absolute so we can reliably walk up the tree.
case "$dir" in
  /*) ;;
  *) dir="$PWD/$dir" ;;
esac

while :; do
  if [ -f "$dir/biome.json" ] || [ -f "$dir/biome.jsonc" ]; then
    exec biome format --stdin-file-path="$path"
  fi
  [ "$dir" = "/" ] && break
  dir="$(dirname "$dir")"
done

cat
