file = File.readlines("input.txt").map(&:chomp).first

#  PART 1 ----------------

# split into groups of four WRONG LOGIC
# groups = file.first.chars.each_slice(4).to_a.map(&:join)

letters = file.chars
marker = 0

letters.each_with_index do |letter, i|
  # check if all characters are unique
  group = file[i..i+3]
  unique = group.chars.uniq.join
  if group == unique
    marker = i + 4
    break
  end
end

puts marker

# PART 2 ---------------

marker = 0

letters.each_with_index do |letter, i|
  # check if all characters are unique
  group = file[i..i+13]
  unique = group.chars.uniq.join

  if group == unique
    marker = i + 14
    break
  end
end

puts marker
