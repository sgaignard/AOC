file = File.readlines("input.txt").map(&:chomp)

cal = []
num = 0

file.each do |n|
  if n != ""
    num += n.to_i
  else
     cal << num
     num = 0
  end
end

cal << num

puts cal.max(3).sum
