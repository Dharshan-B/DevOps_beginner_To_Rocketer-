#!/bin/bash

# Git Conflict Setup Script
echo "🌪️ Creating a Git conflict for you to solve..."

# 1. Create a dummy file
echo "Original Line" > conflict_zone.txt
git add conflict_zone.txt
git commit -m "Add conflict zone"

# 2. Create branch A and change the line
git checkout -b branch-a
echo "Line changed by Branch A" > conflict_zone.txt
git add conflict_zone.txt
git commit -m "Branch A change"

# 3. Go back to main and create branch B
git checkout main
git checkout -b branch-b
echo "Line changed by Branch B" > conflict_zone.txt
git add conflict_zone.txt
git commit -m "Branch B change"

echo ""
echo "----------------------------------------"
echo "CONFLIT CREATED!"
echo "Now try this:"
echo "1. Switch to main: git checkout main"
echo "2. Merge branch A: git merge branch-a"
echo "3. Merge branch B (This will fail!): git merge branch-b"
echo "4. Fix the conflict in conflict_zone.txt and commit!"
