#https://www.hackerrank.com/contests/booking-passions-hacked-backend/challenges/destinations-together-3/submissions/code/6488717
#
# Enter your code here. Read input from STDIN. Print output to STDOUT
john, zizi, common = gets.split(' ').map(&:to_i)

unique_cities = (john - common) + (zizi - common) + common - 1 # Tel aviv

def fact(n)
  if n<= 1
    1
  else
    n * fact( n - 1 )
  end
end

puts fact(unique_cities)
