#!/bin/sh
bin/openocd -f scripts/interface/ftdi/flyswatter2.cfg -f scripts/board/firestarter.cfg -f scripts/flash-jtag.cfg
if [ $? -ne 0 ]; then
  echo
  echo "***ERROR***"
  exit 1
else
  echo
  echo "!!!SUCCESS!!!"
fi