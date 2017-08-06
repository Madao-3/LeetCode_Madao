# @param {String[]} words
# @return {String[]}
def find_words(words)
 words.select { |w| w =~ /^([qwertyuiop]*|[asdfghjkl]*|[zxcvbnm]*)$/i }
end