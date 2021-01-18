#!/bin/sh

cp /usr/games/mednafen-09x.cfg ${MEDNAFEN_HOME}/

# Launch the process in background, record the PID into a file, wait
# for the process to terminate and erase the recorded PID
mednafen -fs 1 -force_module pce_fast -pce_fast.stretch full "$1"&
record_pid $!
wait $!
erase_pid
