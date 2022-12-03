file = File.readlines("input.txt").map(&:chomp)

#  PART 1 ----------------

# split string in half and find matching character

a = []

file.each do |e|
  h = e.size/2
  fin = e[h..-1].chars.uniq.join
  e[0..h-1].chars.uniq.each do |l|
    if fin.match(l)
      n = l == l.upcase ? l.ord - "A".ord + 27 : l.ord - "a".ord+1
      a << n
    end
  end
end

puts a.sum

# PART 2 -----------------

ar = file.each_slice(3).to_a
a2 = []

ar.each do |strings|
  sec_str = strings[1].chars.uniq.join
  thr_str = strings[2].chars.uniq.join
  strings[0].chars.uniq.each do |l|
    if sec_str.match(l) && thr_str.match(l)
      n = l == l.upcase ? l.ord - "A".ord + 27 : l.ord - "a".ord+1
      a2 << n
    end
  end
end

puts a2.sum
