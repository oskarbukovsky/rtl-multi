#!/usr/bin/env bash
set -e

# Connect to rtl_tcp on localhost:1234 and expose multi-client mux on port 1235
/opt/rtlmux/rtlmux \
  -h rtl-tcp \
  -p 1234 \
  -l 1235