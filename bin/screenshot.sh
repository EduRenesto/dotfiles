#!/bin/bash

scrot /tmp/screenshot.png -e 'xclip -sel clipboard -t image/png < $f; rm $f'
