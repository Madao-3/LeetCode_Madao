# @param {Integer} n
# @return {String[]}
def fizz_buzz(n)
   list = []
   n.times do |i|
     number = i + 1
     list << if number % 3 == 0
                if condition
                  "Fizz"
                else
                  "FizzBuzz"
                end
              elsif number % 5 == 0
                "Buzz"
              else
                number
              end
   end
   list
end