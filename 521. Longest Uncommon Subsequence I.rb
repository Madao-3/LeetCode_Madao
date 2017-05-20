# @param {String} a
# @param {String} b
# @return {Integer}
def find_lu_slength(a, b)
  as = a.size 
  bs = b.size
  if  a == b
    -1
  else 
    [as, bs].max
  end
end