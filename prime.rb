def prime?(integer)
  range = [nil, nil, *2..integer]
  divisors = (2..Math.sqrt(integer)).to_a

  range.each {|num| print "#{num}, "}
  divisors.each {|num| print "D#{num}, "}

  divisors.each do |num|
    (num**2..integer).step(1){|place| range[place] = nil} if range[num]
  end
  range.compact

  ##prime.each {|num| print "P#{num} "}
  ##not_prime.each {|num| print "NP#{num} "}
  if range.include?(integer) == true
    true
  else
    false
  end
end
