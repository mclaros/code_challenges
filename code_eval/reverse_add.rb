#reverse and add without string conversion

def split_digits(n)
    digits = []
	while n > 0
		digits.unshift(n % 10)
		n /= 10
	end
	digits
end

def join_digits(digits)
	base = 1
	joined = 0

	(digits.length - 1).downto(0) do |idx|
		joined += digits[idx] * base
		base *= 10
	end
	joined
end

def palindrome_arr?(arr)
	mid_idx = arr.length / 2
	(0..mid_idx).each do |idx|
		return false if arr[arr.length - 1 - idx] != arr[idx]
	end
	true
end

def add_until_palindrome(n)
	iter = 0

	while !palindrome_arr?(split_digits(n))
		n += join_digits(split_digits(n).reverse)
		iter += 1
	end
	[iter, n]
end

File.open(ARGV[0]).each_line do |line|
	n = line.chomp.to_i
	puts add_until_palindrome(n).join(" ")
end