#!/bin/env lua

-- Euler project, Problem 5
-- 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
--
-- What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

local function still_divisible(n, prod)
    local i
    for i = 1, n do
        if (prod % i ~= 0) then return false end
    end
    return true
end

local function min_divisible(n)
    local i
    local prod = 1
    for i = 2, n do
        prod = prod * i
    end
    for i = 2, n do
        while still_divisible(n, prod/i) do
            prod = prod/i
        end
    end

    return prod
end

print(min_divisible(10), "should be 2520")
print(min_divisible(20))

-- TODO Create the number from "below"
-- TODO Rrrrrr! Be recursive!!
