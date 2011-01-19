p (1...1000).select(){|n| n%3 == 0 or (n%5 == 0 and n%15 != 0)}.inject(:+)
