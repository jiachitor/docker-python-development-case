#!/bin/bash
# Strict mode
set -euo pipefail

echo "==================";

/app/web/pymonitor.py /app/web/myhttpserver.py
