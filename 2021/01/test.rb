file = File.readlines("input.txt").map(&:chomp).map(&:to_i)

c = 0
n = file[0]

file[1..-1].each do |num|
  if num > n
    c += 1
  end
  n = num
end

puts c

c2 = 0
n2 = file[0..2].sum

file[1..-1].each_with_index do |num, i|
  s = file[i..(i+2)].sum
  if s > n2
    c2 += 1
  end
  n2 = s
end

puts c2
