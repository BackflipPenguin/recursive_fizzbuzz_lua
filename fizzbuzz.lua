#!/usr/bin/lua

function count(n)
    fizzy = {}
    if n >= 1 then
        count(n - 1)
        table.insert(fizzy, fizzbuzz(n))
    end
    return fizzy
end

function fizzbuzz(num)
    if num % 15 == 0 then
        return "FizzBuzz"
    elseif num % 3 == 0 then
        return "Fizz"
    elseif num % 5 == 0 then
        return "Buzz"
    else
        return num
    end
end

print(table.concat(count(6969), " "))
