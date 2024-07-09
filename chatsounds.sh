#!/bin/bash
PARAM=$1
PATH=/bin:/usr/bin
case $PARAM in
"JOIN")
play -qnV0 synth tri 1500 tri 1800 delay 0 .12 fade h 0 .2 remix -
;;
"PART")
play -qnV0 synth tri 1800 tri 1500 delay 0 .12 fade h 0 .2 remix -
;;
"QUIT")
play -qnV0 synth pi fade h 0 1 1 pad 0 1 reverb overdrive riaa norm -7
;;
"CMSG")
play -qnV0 synth 0.09 tri E3:B3
;;
"ACTION")
play -qnV0 synth 0.25 tri E1:G5 tri D1:B5 remix - norm -5
;;
"NOTICE")
play -nqV0 synth pi fade h 0 1 1 norm -15 pad 0 1 reverb overdrive riaa speed 32 reverse repeat 3
;;
"PMSG")
play -qnV0 synth pl G4 pl G4 pl D4 pl D4 pl D4 pl D3 pl G4 pl G3 pl B3 pl B2 pl G3 pl G2 delay 0 0.01 0.02 0.03 0.04 0.05 0.06 0.07 0.08 0.09 0.1 0.11 remix - phaser fade p 0 0.5 0.3 norm -3
;;
"KEYWORD")
play -qnV0 synth 0.5 tri A3:D3 tri D3:A3 remix -
;;
esac
