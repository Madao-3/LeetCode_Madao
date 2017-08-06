require 'pry'
def solve_n_queens(n)
  $result = []
  chess = []
  n.times do
    chess << [0]*n
  end
  backTrack(0, chess);
  $result
end

def backTrack(x, chess)
  size = chess.size()
  p x, size, chess
  if (x == size )
    res = []
    size.times do |i|
      tmp = ''
      size.times do |j|
        tmp += chess[i][j] == 1 ? 'Q' : '.'
      end
      res << tmp
    end
    $result << res
  end
  size.times do |j|
    if safe(x, j, chess)
      chess[x][j] = 1
      backTrack(x + 1, chess)
      chess[x][j] = 0
    end
  end
end

def safe(x, y, chess)
  size = chess.size
  p chess
  return false if x >= size  || y >= size
  size.times do |i|
    size.times do |j|
      p x
      if chess[x][i] == 1 ||
         chess[i][y] == 1 ||
         (chess[j][i] == 1 && ((i-j == x-y) || (i+j == x + y)))
        return false
      end
    end
  end
  return true
end
solve_n_queens(4)