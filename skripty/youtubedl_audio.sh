#!/bin/bash
youtube-dl  --ignore-errors --extract-audio --audio-format mp3 -o "%(title)s.%(ext)s" "$(xsel --clipboard)"
