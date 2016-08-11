#!/bin/sh

# https://stackoverflow.com/questions/59895/can-a-bash-script-tell-what-directory-its-stored-in
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR

if [ -e "${HOME}/Library/Application Support/Vienna/Styles/" ]; then
	viennastyle="th.viennastyle"
	mkdir "$viennastyle"
	cp vienna/template.html "$viennastyle/"
	cp text-reading.css "$viennastyle/stylesheet.css"
	open "$viennastyle"
	#rm -R "$viennastyle"
fi

if [ -e "${HOME}/Library/Application Support/MacDown/Styles/" ]; then
	cp -Rfv text-reading.css "${HOME}/Library/Application Support/MacDown/Styles/th.css"
fi
