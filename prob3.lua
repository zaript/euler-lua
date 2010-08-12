#!/bin/env lua

-- Euler project, Problem 3

-- The prime factors of 13195 are 5, 7, 13 and 29.
-- What is the largest prime factor of the number 600851475143 ?

local function find_largest_prime_factor(x)
    local border = math.floor(math.sqrt(x))
    local i = 0

    if (x % 2 == 0) then
        return math.max(2, find_largest_prime_factor(x/2))
    end

    for i = 3,border,2 do
        if (x % i == 0) then
            return math.max(i, find_largest_prime_factor(x/i))
        end
    end
    return x
end

print(find_largest_prime_factor(600851475143))
print(find_largest_prime_factor(13195))
print("good")
