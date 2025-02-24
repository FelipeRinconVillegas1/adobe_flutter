#!/bin/bash

# Find and delete all pubspec.lock files
find . -name "pubspec.lock" -type f -delete

# Find and delete all .dart-tool directories
find . -name ".dart_tool" -type d -exec rm -rf {} +

# Delete .symlinks, Pods directories, and Podfile.lock file inside ios directory
rm -rf ios/.symlinks
rm -rf ios/Pods
rm -f ios/Podfile.lock

echo "All pubspec.lock files and .dart-tool directories have been deleted."