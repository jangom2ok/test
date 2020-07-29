#!/bin/sh
exec ruby -S -x "$0" "$@"
#!ruby

result = true
result &&= false
p result

result = true
result &&= true
p result

result = false
result &&= true
p result

result = false
result &&= false
p result
