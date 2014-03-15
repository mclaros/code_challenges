#Note that Sieve of Eratosthenes would be more efficient for finding primes
def is_prime?(n)
    (2..(n/2)).each { |num| return false if (n % num == 0) }
    true
end

def is_palindrome?(str)
    mid_idx = str.length / 2
    (0..mid_idx).each do |idx|
        return false if str[idx] != str[(str.length - 1) - idx]
    end
    true
end

1000.downto(0) do |num|
   if is_prime?(num) && is_palindrome?(num.to_s)
       puts num
   end
end