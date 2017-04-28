# @param {String} s
# @return {Integer}
def roman_to_int(s)
  return 0 if !s || s.size == 0
  map = {
    "I" => 1,
    "V" => 5,
    "X" => 10,
    "L" => 50,
    "C" => 100,
    "D" => 500,
    "M" => 1000,
  }
  l = s.chars
  number = 0
  l.each_with_index do |i,index|
    num = map[i]
    next_s = l[index + 1]
    unless next_s
      number += num
      break
    end
    # i = l.shift
    if num < map[next_s] && ["I","X","C"].include?(i)
      number -= num
    else
      number += num
    end
    p "#{num},#{i},#{map[l[index+1]]},#{number},#{index}"
  end
  number
end
roman_to_int("MDCCCLXXXIV" )