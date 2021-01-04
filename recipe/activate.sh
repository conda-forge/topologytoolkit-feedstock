#!/bin/sh

# set ParaView plugin path (required when using python instead of pvpython)

export PV_PLUGIN_PATH="${CONDA_PREFIX}/Library/bin/plugins"
