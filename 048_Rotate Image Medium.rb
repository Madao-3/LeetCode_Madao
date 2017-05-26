# @param {Integer[][]} matrix
# @return {Void} Do not return anything, modify matrix in-place instead.
def rotate(matrix)
  n = matrix.size
  i = 0
  while i < n
    matrix << matrix[0..n-1].map {|a| a[i]} .reverse
    i += 1
  end
  matrix.shift(i)
end
def swap(a,b)
  tmp = a
  a = b
  b = tmp
end


def rotate(matrix)
  n = matrix.size
  i = 0
  while i < n / 2 do
    j = i
    while j < n - i - 1 do
      swap(matrix[i][j], matrix[n-j-1][i])
      swap(matrix[n-j-1][i], matrix[n-i-1][n-j-1])
      swap(matrix[n - i - 1][n - j - 1], matrix[j][n - i - 1])
      p matrix
      j+= 1
    end
    i += 1
  end
  matrix
end

rotate([[1,2],[3,4]])
