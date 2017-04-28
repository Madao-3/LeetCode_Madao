# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)  
  max = 0
  window = {}
  si = -1
  return s.chars.uniq.size if s.size <= 2
  l = s.chars
  l.each_with_index do |c, i|
    ci = window[c]
    (ci && ci > si) && si = ci
    window[c] = i
    new_length = i - si
    max = new_length if max < new_length
  end  
  max  
end
