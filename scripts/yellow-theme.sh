#!/usr/bin/env bash

set -e

TARGET_DIR="profile-summary-card-output"

OLD_COLORS=(
  "#2f80ed"
  "#1f6feb"
  "#0969da"
  "rgb(47, 128, 237)"
)

NEW_COLOR="#facc15"

for file in $(find "$TARGET_DIR" -name "*.svg"); do
  for color in "${OLD_COLORS[@]}"; do
    sed -i "s/${color}/${NEW_COLOR}/g" "$file"
  done
done

echo "✅ Yellow theme applied successfully"
