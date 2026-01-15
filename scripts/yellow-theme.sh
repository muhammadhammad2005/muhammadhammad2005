#!/bin/bash

TARGET="profile-summary-card-output/transparent"

# Primary blue → yellow
sed -i 's/#006AFF/#F5C518/g' $TARGET/*.svg
sed -i 's/#0579C3/#F5C518/g' $TARGET/*.svg

# Secondary text → muted yellow
sed -i 's/#417E87/#C9B458/g' $TARGET/*.svg
