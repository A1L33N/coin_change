class Fixnum
  define_method(:coin_change) do
    input = self
    remaining_change = 0
    quarter = 0
    change = ""

    if input.>=(25)
      quarter = (input./(25)).floor()
      remaining_change = input.-(quarter.*(25))
    end
    change = quarter.to_s().concat(" Quarter")
    if quarter.>1
      change.concat("s")
    end
    change
  end
end
