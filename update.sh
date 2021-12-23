#!/bin/bash
cd /home/fabian/freqtrade/freqtrade-local/ft_userdata
FREQVERSION='latest docker image'

cd /home/fabian/freqtrade/NostalgiaForInfinity
GITRESPONSE=`git pull`
UPDATED='Already up to date.'
NFIVERSION=`git describe --tags`
NFICOMMENT=$(git show -s --format='%s')

if [[ $GITRESPONSE != $UPDATED ]]; then
  python3 /home/fabian/freqtrade/nfi-auto-update/notify.py "$FREQVERSION" "$NFIVERSION" "$NFICOMMENT"
  sleep 5
  /home/fabian/freqtrade/nfi-auto-update/copy.sh
  sleep 5
  /home/fabian/freqtrade/nfi-auto-update/restart.sh
fi
