/**
* @param {string} str
* @returns {string}
*/
var reverseWords = function(s) {
  if (s == null || s.length == 0) return ""
  array = s.split(" ")
  s = ''

  for (i = array.length - 1; i >= 0; --i) {
    if (!array[i] == '') {
      s += array[i] + ' '
    }
  }

  return s.length == 0 ? "" : s.substring(0, s.length - 1);
}
reverseWords( "the sky is blue" )
# 77627