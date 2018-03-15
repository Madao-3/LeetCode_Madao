# @param {String} moves
# @return {Boolean}
def judge_circle(moves)
  point = [0, 0]
  moves.each do |move|
    case move
    when 'L'
      point[0] -= 1
    when 'R'
      point[0] += 1
    when 'U'
      point[1] += 1
    when 'D'
      point[1] -= 1
    end
  end
  point == [0, 0]
end