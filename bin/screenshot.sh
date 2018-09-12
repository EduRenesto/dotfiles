#!/bin/bash

scrot /tmp/screenshot.png -e 'convert $f -crop `xrectsel` $f; xclip -sel clipboard -t image/png < $f; rm $f'
