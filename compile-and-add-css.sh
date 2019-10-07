#!/bin/bash

# Compile Sass and add generated CSS
SASS=`which sass || which sassc || which pysassc`
for scss in css/*.scss; do
    css=${scss/.scss/.css}
    $SASS -t expanded $scss $css
    git add $css
done
git commit -m "Add compiled CSS"
