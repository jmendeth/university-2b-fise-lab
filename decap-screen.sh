#!/bin/bash

tmpdir="$(mktemp -d)"

# Initial crop / unresize
convert "$1" -crop 360x270+20+4 +repage \
  -filter lanczos -resize '320x240!' \
  -colorspace gray "$tmpdir/screen.png"

# First level
convert "$tmpdir/screen.png" -threshold 55.7% \
  "$tmpdir/screen1.png"

# Second level
convert "$tmpdir/screen.png" -threshold 91% \
  -alpha Set \( "$tmpdir/screen1.png" -morphology Erode Square \) -compose CopyOpacity -composite \
  -background White -alpha remove "$tmpdir/screen2.png"

# Root image
convert "$tmpdir/screen1.png" -alpha off \
  \( "$tmpdir/screen2.png" -alpha set -channel A -evaluate set 30% -background white -alpha remove \) \
  -compose Multiply -composite "$2"

rm -r "$tmpdir"
