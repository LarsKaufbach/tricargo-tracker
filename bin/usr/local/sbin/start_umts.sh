#!/bin/bash

logger -t start_umts.sh Trying to connect to internet via UMTS ...

nohup sh -c "wvdial pin 2>&1 | logger -t wvdial-pin && wvdial WinSIM 2>&1 | logger -t wvdial-WinSIM" </dev/null >/dev/null 2>&1 &
