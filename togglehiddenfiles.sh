# !/bin/bash/
# @Author: Sarwesh Shah
# Show/Hide Hidden file on Mac Finder

HIDDEN_SWITCH_ON="$(defaults read com.apple.finder AppleShowAllFiles)"
echo "Hidden files are showing: "$HIDDEN_SWITCH_ON
read -p "Show hidden files in Finder: " input
if [[ $input != $HIDDEN_SWITCH_ON ]]; then
	defaults write com.apple.finder AppleShowAllFiles $input
	killall Finder
fi
