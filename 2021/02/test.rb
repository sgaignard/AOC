file = File.readlines("input.txt").map(&:chomp)

h = 0
d = 0

file.each do |e|
  x,y = e.split(" ")
  y = y.to_i
  if x == "forward"
    h += y
  else
    d += x == "down" ? y : -y
  end
end

puts h * d

h2 = 0
d2 = 0
a = 0

file.each do |e|
  x,y = e.split(" ")
  y = y.to_i
  if x == "forward"
    h2 += y
    d2 += y * a
  else
    a += x == "down" ? y : -y
  end
end

puts h2 * d2
