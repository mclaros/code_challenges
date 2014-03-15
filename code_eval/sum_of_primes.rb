#Note that Sieve of Eratosthenes would be more efficient
#print sum of first 1000 primes
def is_prime?(num)
   (2..(num/2)).each { |divisor| return false if num % divisor == 0 }
   true
end

sum = 0
num = 2
count = 0
until count == 1000
    if is_prime?(num)
        sum += num 
        count += 1
    end
    num += 1
end

puts sum