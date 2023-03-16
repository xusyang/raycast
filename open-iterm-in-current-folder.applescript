#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Open iTerm in Current Folder
# @raycast.mode compact

# @raycast.icon 👨‍🌾‍

on run
    tell application "Finder"
        set thePath to (quoted form of POSIX path of (target of front window as alias))
    end tell
    tell application "iTerm"
        activate
        tell current window
            create tab with default profile
            tell current session of current tab
                write text "cd " & thePath
            end tell
        end tell
    end tell
end run