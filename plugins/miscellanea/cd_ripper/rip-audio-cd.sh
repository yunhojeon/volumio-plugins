#!/bin/bash
LOGFILE=/var/log/cdrip.log
date >> $LOGFILE
(
  # Wait for lock on /var/lock/.audio-cd-rip.lock (fd 200) for two hours
        flock -x -w 7200 200 || exit 1

        sudo -u volumio abcde 2>&1 >> $LOGFILE
        rc=$?
        if [[ $rc != 0 ]] ; then
                # log it somehow
                eject
                exit $rc
        fi
) 200>/var/lock/.audio-cd-rip.lock

