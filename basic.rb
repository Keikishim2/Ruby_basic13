#def test
#    puts "You are in the method"
#    yield
#    puts "You are back in the method"
#    yield
#end
#test { puts "You are in the block" }

#def test
#    yield(5)
#    puts "You are in the method test"
#    yield(100)
#end
#test {|i| puts "You are in the block #{i}"}

#def square(num)
#    puts "num is #{num}"
#    puts "yield(num) has a value of #{yield(num)}"
#end
#square(5) {|i| i*i }

#Print 1-255
(1..255).each {
    |i| puts i, " "
}
#Print Odd 1-255
puts (1..255).find_all {
    |i| i % 2 == 1
}.to_s
#Print Sum
sum = 0
for i in 0..255
    sum += 1
    puts "New number: #{i} Sum #{sum}"
end
#Iterating through an array
x = [1,3,5,7,9,13]
for i in 0..x.length-1
    puts x[i]
end
#Find Max
def find_max(arr)
    arr.sort!
    return arr[arr.length-1]
end
puts find_max ([-3, -5, -7])
#Get Average
def get_average(arr)
    sum = 0
    for i in 0..arr.length-1
        sum += arr[i]
    end
    return sum/arr.length
end
puts get_average([1,3,5,7])
#Array with Odd Numbers
def arr_odd
    y = []
    y = (1..255).find_all {
        |i| i.odd?
    }
    return y
end
#Greater than Y
def greater_than(arr, y)
    num = arr.find_all {
        |i| i > y
}.length
end
puts greater_than([1, 3, 5, 7], 3)
#Square the Values
def square_val(arr)
    arr.collect{
        |i| i*i
    }
end
square_val ([1, 5, 10, -2])
#Eliminate Negative Numbers
def noneg(arr)
    arr.collect { |i| if i < 0 
    then 0 
else 
    i end }
end
puts noneg([1, 5, 10, -2])
#Max, Min, Average
def maxminavg(arr)
sum = 0
arr.sort!
min = arr[0]
max = arr[arr.length-1]
for i in 0..arr.length-1
    sum += arr[i]
end
avg = sum/arr.length
return {
    min: min, max: max, avg: avg
}
end
puts maxminavg([1, 5, 10, -2])
#Shifting the Values in the Array
def shift(arr)
    for i in 0..arr.length-1
        arr[i] = arr[i+1]
        if arr[i] == nil then arr[i] = 0 end
        end
        return arr
    end
puts shift([1, 5, 10, 7, -2])
#Number to String
def numtos(arr)
    arr.collect { |i| if i < 0 
    then "Dojo"
else 
    i end }
end
puts numtos([-2, -1, 2])