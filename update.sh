#!/usr/bin/env bash

ls | grep -v 'down-vsix.sh' | xargs basename -a -s .vsix
