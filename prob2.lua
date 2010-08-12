#!/bin/env lua

a = 1
b = 2
sum = 0
while (b <= 4e6) do
    if (b % 2 == 0) then
        sum = sum + b
    end
    tmp = a + b
    a = b
    b = tmp
end
print(sum)
