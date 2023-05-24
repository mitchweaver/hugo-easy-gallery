#!/bin/sh

PATH_TO_SITE=${HOME}/src/website

if [ ! -d "$PATH_TO_SITE" ]; then
    >&2 echo "Error: \$PATH_TO_SITE doesn't seem to exist"
    >&2 echo "Not copying. Edit the script with correct path."
    exit 1
fi

mkdir -p "$PATH_TO_SITE/layouts/shortcodes"
mkdir -p "$PATH_TO_SITE/static/css"
mkdir -p "$PATH_TO_SITE/static/js"
mkdir -p "$PATH_TO_SITE/static/css/photoswipe"
mkdir -p "$PATH_TO_SITE/static/js/photoswipe"

cp -vf layouts/shortcodes/figure.html "$PATH_TO_SITE"/layouts/shortcodes/
cp -vf layouts/shortcodes/gallery.html "$PATH_TO_SITE"/layouts/shortcodes/
cp -vf layouts/shortcodes/load-photoswipe-theme.html "$PATH_TO_SITE"/layouts/shortcodes/
cp -vf layouts/shortcodes/load-photoswipe.html "$PATH_TO_SITE"/layouts/shortcodes/


cp -vf static/css/hugo-easy-gallery.css "$PATH_TO_SITE"/static/css/

cp -vf static/css/photoswipe/default-skin.min.css "$PATH_TO_SITE"/static/css/photoswipe/
cp -vf static/css/photoswipe/default-skin.png "$PATH_TO_SITE"/static/css/photoswipe/
cp -vf static/css/photoswipe/default-skin.svg "$PATH_TO_SITE"/static/css/photoswipe/
cp -vf static/css/photoswipe/photoswipe.min.css "$PATH_TO_SITE"/static/css/photoswipe/
cp -vf static/css/photoswipe/preloader.gif "$PATH_TO_SITE"/static/css/photoswipe/

cp -vf static/js/load-photoswipe.js "$PATH_TO_SITE"/static/js/

cp -vf static/js/photoswipe/photoswipe-ui-default.min.js "$PATH_TO_SITE"/static/js/photoswipe/
cp -vf static/js/photoswipe/photoswipe.min.js "$PATH_TO_SITE"/static/js/photoswipe/
