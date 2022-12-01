totals = [0,]
i = 0

# Read the file
File.foreach("input.txt") do |line|
  if line.strip.empty?
    totals << 0
    i += 1
    next
  else
    totals[i] += line.strip.to_i
  end
end

totals.sort!.reverse!
puts totals[0, 3].sum
