#!/bin/bash

dbus-daemon --session --address=unix:path=$XDG_RUNTIME_DIR/bus
