#!/bin/bash
# --- build-zip.sh ---
# AI generated

# 2. Define output
BUILD_DIR="."
ZIP_FILE="Build.zip"

# 3. Remove old zip
rm -f "$ZIP_FILE"

# Create temporary build directory and copy project files excluding unwanted files
mkdir build
rsync -av --exclude='.git' --exclude='.idea' --exclude='.DS_Store' --exclude='__MACOSX' --exclude='*.sh' "$BUILD_DIR"/ build/

# 4. Create new zip containing the build/ directory
zip -r "$ZIP_FILE" build

# Remove temporary build directory
rm -rf build

echo "Build packaged into $ZIP_FILE"

echo "Launching Factorio..."
open "/Users/egorexw/Applications/Factorio.app"