class Float
  define_method(:coin_change) do
    input_price = self.to_s.split(".")
    remaining_change=0
    if input_price.length() > 1
      remaining_change=input_price[1].to_f()
    else
      remaining_change=input_price[0].to_f()
    end
    remaining_change
      if remaining_change.< 10
        remaining_change = remaining_change.*(10)
      else
        remaining_change
      end

  #binding.pry
    dollar = input_price[0].to_s()
    quarter = 0
    dime = 0
    nickel = 0
    penny = 0
    change=""

    until remaining_change.==0
      if remaining_change.>=25
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

      remaining_change
      change

      if remaining_change.>=(1)
        penny = (remaining_change./(1)).floor()
        remaining_change = remaining_change.-(penny.*(1))
        penny = penny.to_s()

        change = change.concat(" and ").concat(penny.concat(" Penn"))
#binding.pry()
        if penny.to_f().>1
          change.concat("ies")
        else
          change.concat("y")
        end
      end

    end
    change
      if input_price.length()==1

        change
      else
        change = dollar.concat(" Dollar, ").concat(change)
        # binding.pry
      end
    change
    end
end
