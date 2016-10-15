#!/bin/sh
cat names.txt| awk -v q="'" '{print "openscad -D "q"name=\""$1"\""q" -D "q"font=\"Roboto\""q" -o "$1".stl ../keychain.scad"}' | sh
