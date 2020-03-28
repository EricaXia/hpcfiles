#!/bin/bash

## What it does: ls -f | wc -l and ls -f *.json | wc -l 
## for every directory in curr dir starting with "#" sign

echo "cleaneating json"
find \#cleaneating/ -name "*.json" | wc -l
echo "foodgasm json"
find \#foodgasm/ -name "*.json" | wc -l
echo "foodie json"
find \#foodie/ -name "*.json" | wc -l
echo "foodoftehday json"
find \#foodoftheday/ -name "*.json" | wc -l
echo "foodporn json"
find \#foodporn/ -name "*.json" | wc -l
echo "instafood json"
find \#instafood/ -name "*.json" | wc -l
echo "recipe json"
find \#recipe/ -name "*.json" | wc -l
