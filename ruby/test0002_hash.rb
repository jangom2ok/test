#!/bin/sh
exec ruby -S -x "$0" "$@"
#!ruby

# user_idでマージする良い方法を調べる

a = [
	{ id: 0, user_id: 0, flag1: false, flag2: false },
	{ id: 1, user_id: 100, flag1: false, flag2: true },
	{ id: 2, user_id: 200 },
	{ id: 3, user_id: 300 },
]
b = [
	{ user_id: 100, flag1: true, flag2: false },
	{ user_id: 200, flag1: false, flag2: false },
	{ user_id: 300, flag1: true, flag2: true },
]

p a
p b

indexed_b = b.each_with_object({}) { |row, hash| hash[row[:user_id]] = row }

merged = a.map do |a_item|
	b_item = indexed_b[a_item[:user_id]]
	a_item.merge(b_item) if b_item
end.compact

p "result ----"
merged.each do |m|
	p m
end
