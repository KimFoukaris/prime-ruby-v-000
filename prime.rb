def prime?(integer)
  range = [nil, nil, *2..integer]

  range.each {|num| print "#{num}, "}

  (2..Math.sqrt(integer)).each do |num|
    (num**2..integer).step(num){|place| range[place] = nil} if range[num]
  end
  range.compact
  range.each {|num| print "#{num}, "}
  ##prime.each {|num| print "P#{num} "}
  ##not_prime.each {|num| print "NP#{num} "}
  if range.include?(integer) == true
    true
  else
    false
  end
end
