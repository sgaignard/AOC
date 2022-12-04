file = File.readlines("input.txt").map(&:chomp)

#  PART 1 ----------------

# split string at comma and create ranges
# determine first and last numbers of each
# count how many included
c = 0

file.each do |pairs|
  one, two = pairs.split(",").map{|r|
    n,m = r.split("-")
    (n..m).to_a}
  f1 = one.first
  l1 = one.last
  f2 = two.first
  l2 = two.last
  c += 1 if one.include?(f2) && one.include?(l2) || two.include?(f1) && two.include?(l1)
end

puts c

# PART 2 ---------------

# find pairs that overlap

c = 0

file.each do |pairs|
  one, two = pairs.split(",").map{|r|
    n,m = r.split("-")
    (n..m).to_a}
  f1 = one.first
  l1 = one.last
  f2 = two.first
  l2 = two.last
  c += 1 if one.include?(f2) || one.include?(l2) || two.include?(f1) || two.include?(l1)
end

puts c
