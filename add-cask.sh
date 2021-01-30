#!/bin/sh

HOMEBREW_CASK_DIR=/usr/local/Homebrew/Library/Taps/homebrew/homebrew-cask/Casks
CASK_NAME=desktop-goose.rb
CASK_URL=https://raw.githubusercontent.com/fishsouprecipe/desktop-goose/primary/Cask/desktop-goose.rb
CASK_PATH=$HOMEBREW_CASK_DIR/$CASK_NAME

# Check brew installed
if [ ! `command -v brew` ]; then
    1>&2 echo "brew is not istalled!"
    exit 1
fi

# Check curl installed
if [ ! `command -v curl` ]; then
    1>&2 echo "curl is not istalled!"
    exit 2
fi

# Check casks dir exists
if [ ! -d $HOMEBREW_CASK_DIR ]; then
    1>&2 echo "$HOMEBREW_CASK_DIR casks dir does not exist!"
    exit 3
fi

# Check desktop-goose.rb already exists
if [ -f $CASK_PATH ]; then
    1>&2 echo "$CASK_PATH cask already exists!"
    exit 4
fi

echo "Installing $CASK_NAME cask to casks dir.."

curl -fsSL $CASK_URL 1>$CASK_PATH

echo "Cask $CASK_NAME has been successfully installed!"
