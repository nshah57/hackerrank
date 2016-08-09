#https://www.hackerrank.com/contests/hourrank-11/challenges/strange-code

number = gets.to_i

# 3 X (2**n -1) will always have the value of 1,
# So lets reverse engineer

closest_furthest_index = Math.log( ( ( number/3.0 ).ceil + 1), 2).ceil
closest_furthest_value = (2**closest_furthest_index - 1) * 3

puts closest_furthest_value - number + 1
