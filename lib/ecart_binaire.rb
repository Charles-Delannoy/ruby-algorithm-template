def integer_binary_gap(int)
  binary_gap(to_binary(int))
end

def to_binary(int)
  return '0' if int.zero?

  division = [int, nil]
  # binary_conversion = ''
  binary_conversion = []
  until division.first.zero?
    division = division.first.divmod(2)
    # binary_conversion = division.last.to_s + binary_conversion
    binary_conversion.insert(0, division.last)
  end
  # binary_conversion
  binary_conversion.join
end

def binary_gap(binary)
  no_ending_zeros = binary.gsub(/0+$/, '')
  gaps = no_ending_zeros.scan(/0+/).map(&:length)
  gaps.max || 0
end
