#!/bin/sh
exec ruby -S -x "$0" "$@"
#!ruby

param = if true
           "foo"
        else
           "hoge"
        end

p param
