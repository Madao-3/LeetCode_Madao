# @param {String} word
# @return {Boolean}
def detect_capital_use(word)
    l = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
   word = word.split('')
   current_mode = l.include?(word.shift) ? 'C_MODE' : 'L_MODE'
   breakbad = false
   word.each do |i|
      if l.include?(i)
        return false if current_mode == 'L_MODE'
        breakbad = true
      elsif breakbad
        return false
      else
        current_mode = 'L_MODE'
      end
   end
   return true
end

detect_capital_use('FFFFFFFff')