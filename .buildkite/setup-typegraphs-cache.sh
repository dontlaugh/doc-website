#!/bin/sh
#

relpath="Website/plugins/typegraph/typegraphs"
abspath="/home/builder/cache/typegraphs"

if [ ! -s $relpath ]; then
  # A bit safer than rm -rf
  rm $relpath/*.svg
  rm $relpath/.gitkeep
  rm -r $relpath
fi

ln -s $abspath $relpath

