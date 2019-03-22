#!/bin/bash
top -b -n1 | awk 'begin {print "pid","cpu","mem","cmd"} {print $1,$9,$10,$12}' | grep chrome | awk -F " " '{print $3}' | paste -sd+ | bc
