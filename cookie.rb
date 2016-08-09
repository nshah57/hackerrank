#!/bin/ruby
#https://www.hackerrank.com/contests/w22/challenges/cookie-party

n,m = gets.strip.split(' ')
n = n.to_i
m = m.to_i

if n >= m
    puts n - m
else
  cookies_per_person = (m/n.to_f).ceil
  total_cookies      = cookies_per_person * n
  puts total_cookies - m
end
