#!/bin/sh
exec ruby -S -x "$0" "$@"
#!ruby

id  = "a0001"
tags = [1, 2, 3]

p [id, tags].flatten
