#!/usr/bin/env

s() {
  soundfile=$(find /Users/tom/system/sounds -name "*$1*")" "
  firstsound=$(find /Users/tom/system/sounds -name "*$1*" -type f | awk 'NR==1')
  echo $soundfile
  echo $firstsound
  afplay $firstsound
}
randomsound() {
  # requires gnu sort
  soundfile=$(find /Users/tom/system/sounds -type f -size -50k  \( ! -iname ".*" \) | gsort -R | head -n 1)
  echo $soundfile
  afplay $soundfile
}
soundme() {
  COUNTER=$2
  DELAY=$(($1*60))
  echo "play random sounds at me every $1 minutes (x$COUNTER)"
  until [  $COUNTER -lt 1 ]; do
    sleep $DELAY
     echo COUNTER $COUNTER
     let COUNTER-=1
     randomsound
  done
}