file = File.readlines("input.txt").map(&:chomp)

#  PART 1 ----------------

# A = rock
# B = paper
# C = scisors

# X = rock 1
# Y = paper 2
# Z = scisors 3

# WIN = A Y, C X, B Z

c = 0

file.each do |e|
  x,y = e.split(" ")
  case y
  when "Y"
    c += 2
  when "X"
    c += 1
  when "Z"
    c += 3
  end
  if e == "A Y" || e == "C X" || e == "B Z"
    c += 6
  elsif e == "A X" || e == "B Y" || e == "C Z"
    c += 3
  end
end

puts c

# PART 2 -------

# A = rock 3
# B = paper 1
# C = scisors 2

# Y = DRAW 3
# X = LOSE 0
# Z = WIN 6

# below is a found solution...
scores2 = { 'A X' => 3, 'A Y' => 4, 'A Z' => 8,
            'B X' => 1, 'B Y' => 5, 'B Z' => 9,
            'C X' => 2, 'C Y' => 6, 'C Z' => 7 }
solution2 = file.map(&scores2).sum
puts solution2


# My solution doesn't work and can't figure out why...

d = 0

file.each do |e|
  x,y = e.split(" ")
  case y
  when "Y"
    d += 3
  when "X"
    d += 0
  when "Z"
    d += 6
  end
  case x
  when "A"
    d += 3
  when "B"
    d += 1
  when "C"
    d += 2
  end
end

puts d
