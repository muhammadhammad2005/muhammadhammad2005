#!/usr/bin/env bash
set -e

TARGET_DIR="profile-summary-card-output/transparent"
NEW_COLOR="#facc15"

# Only replace known blue tones used by the cards
sed -i \
  -e 's/#2f80ed/'"$NEW_COLOR"'/g' \
  -e 's/#1f6feb/'"$NEW_COLOR"'/g' \
  -e 's/#0969da/'"$NEW_COLOR"'/g' \
  -e 's/rgb(47, 128, 237)/'"$NEW_COLOR"'/g' \
  "$TARGET_DIR"/*.svg

echo "✅ Yellow theme applied ONLY to transparent cards"
