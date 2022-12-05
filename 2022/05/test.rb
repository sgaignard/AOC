file = File.readlines("input.txt").map(&:chomp)

#  PART 1 ----------------
stacks = [%w(S L W),
          %w(J T N Q),
          %w(S C H F J),
          %w(T R M W N G B),
          %w(T R L S D H Q B),
          %w(M J B V F H R L),
          %w(D W R N J M),
          %w(B Z T F H N D J),
          %w(H L Q N B F T)]


file.each do |input|
  num, stack, dest = input.gsub!(/\D/," ").split.map(&:to_i)
  stack -= 1
  dest -= 1

  num.times do
    item = stacks[stack].pop
    stacks[dest] << item
  end
end

puts stacks.map {|stack| stack.last}.join

# PART 2 ---------------
stacks = [%w(S L W),
          %w(J T N Q),
          %w(S C H F J),
          %w(T R M W N G B),
          %w(T R L S D H Q B),
          %w(M J B V F H R L),
          %w(D W R N J M),
          %w(B Z T F H N D J),
          %w(H L Q N B F T)]

file.each do |input|
  num, stack, dest = input.gsub!(/\D/," ").split.map(&:to_i)
  stack -= 1
  dest -= 1
  length = stacks[stack].size
  index = length - num
  # from stack take num and transfer to dest
  # here are the items to move
  items = stacks[stack][index..-1]
  # here we are removing the items from origin
  num.times do
    stacks[stack].pop
  end
  # here we are transferring the items to destination
  items.each {|item| stacks[dest] << item }
end

puts stacks.map {|stack| stack.last}.join
