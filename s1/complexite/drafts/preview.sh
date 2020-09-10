#!/usr/bin/env bash

SOURCE=$1

if [ ! -f "$SOURCE"  ]; then
	echo "The file '$SOURCE' does not exist."
	echo "Usage: $0 file.md"
	exit 1
fi

function compile {
	pandoc -s "$SOURCE" --css pandoc.css --mathjax -H script.js -o preview.html
}

function cleanup {
	rm -f preview.html
	kill $1
}

livereload &
RELOAD_TASK=$!

trap "cleanup $RELOAD_TASK" EXIT

compile
firefox preview.html

while true;
do
	inotifywait "$SOURCE"
	compile
done

