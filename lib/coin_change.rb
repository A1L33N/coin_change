class Fixnum
  define_method(:coin_change) do
    remaining_change = self
    quarter = 0
    dime = 0
    nickel = 0
    change=""

    until remaining_change.<(5)
      if remaining_change.>25
        quarter = (remaining_change./(25)).floor()
        remaining_change = remaining_change.-(quarter.*(25))
        quarter = quarter.to_s()

        change = change.concat(quarter.concat(" Quarter"))
        if quarter.to_f().>1
          change.concat("s")
        end
      end

      remaining_change
      change

      if remaining_change.>=(10)
        dime = (remaining_change./(10)).floor()
        remaining_change = remaining_change.-(dime.*(10))
        dime = dime.to_s()

        change = change.concat(", ").concat(dime.concat(" Dime"))
        if dime.to_f().>1
          change.concat("s")
        end
      end

      remaining_change
      change

      if remaining_change.>=(5)
        nickel = (remaining_change./(5)).floor()
        remaining_change = remaining_change.-(nickel.*(5))
        nickel = nickel.to_s()

        change = change.concat(", ").concat(nickel.concat(" Nickel"))
#binding.pry()
        if nickel.to_f().>1
          change.concat("s")
        end
      end

    end

    change

    end
end
