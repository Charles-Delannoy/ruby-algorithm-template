def to_binary(int)
  return '0' if int.zero?

  division = [int, nil]
  binary_conversion = ''
  until division.first.zero?
    division = division.first.divmod(2)
    binary_conversion = division.last.to_s + binary_conversion
  end
  binary_conversion
end
