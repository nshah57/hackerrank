#https://www.hackerrank.com/contests/hourrank-11/challenges/strange-code

number = gets.to_i
orig = initial = 3
hash = {}

(1..number).each do |i|
  hash[i] = initial
  if initial == 1
    orig = initial = 2 * orig 
  else
    initial -= 1
  end
end

puts hash
puts hash[number] 
