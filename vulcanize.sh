#!/bin/bash
#
# vulcanize.sh

if which vulcanize 2>/dev/null; then
    echo "You have "vulcanize" installed."
    echo "Working..."
    echo "Done."
else
    echo "You don't have "vulcanize" installed."
    echo "Please install it with the command"
    echo ""npm install -g vulcanize""
    echo "You may need "sudo" to install it."
    exit 1
fi

vulcanize --inline-scripts --inline-css index.html > build.html

mv index.html index.old.html
mv build.html index.html

exit 0
