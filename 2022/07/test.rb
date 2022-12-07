file = File.readlines("input.txt").map(&:chomp)

full on cheated for this one... :(

#  PART 1 ----------------
# fs = Hash.new{ |h, k| h[k] = Hash.new(&h.default_proc) }

# pwd = []

# loop do
#   break if file.empty?
#   l = file.shift
#   case l
#   when /^\$/
#     case l[2..-1]
#     when /^cd/
#       to = l[5..-1]
#       if to == '..'
#         pwd.pop
#       else
#         pwd.push to
#       end
#       fs.dig(*pwd)
#     when /^ls/
#       while !file.empty? && file.first[0] != ?$
#         x = file.shift
#         if x[/^\d/]
#           _, size, filename = x.match(/^(\d+) (.+)$/).to_a
#           fs.dig(*pwd)[filename] = size.to_i
#         end
#       end
#     end
#   end
# end

# $dirs = []
# $sizes = []

# def size_sum_walk(folder, limit = 100000)
#   list = []
#   folder.each_pair do |k, v|
#     if Hash === v
#       ssw = size_sum_walk(v)
#       $dirs << ssw if ssw <= limit
#       list << ssw
#     else
#       list << v
#     end
#   end
#   $sizes << list.sum
#   list.sum
# end

# size_sum_walk fs['/']
# pp $dirs.sum

# to_free = $sizes.max - 40000000
# p $sizes.select{ |x| x > to_free }.min

# PART 2 ---------------
