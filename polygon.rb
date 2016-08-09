#!/bin/ruby
#https://www.hackerrank.com/contests/w22/challenges/polygon-making

def check_poly?(a)
  a.all? { |side|
    side.to_f < ( 0.5 * a.reduce(:+) )
  }
end

n = gets.strip.to_i
a = gets.strip
a = a.split(' ').map(&:to_i)
j = a

while !check_poly?(j)
  j = j.sort
  k = j.pop
  j << k / 2.0 
  j << k / 2.0
end

puts j.size - a.size
