#!/bin/bash
if ! (ps ax | grep -v "grep" | grep -q Telegram); then
    /usr/bin/Telegram/Updater; else
    echo "YES IT's ALIVE"
fi
