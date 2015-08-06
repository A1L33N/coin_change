require('rspec')
require('coin_change')
require('pry')

describe('Float#coin_change') do
  it("returns one quarter of change for 25 cents of input") do
    expect((0.25).coin_change()).to(eq("0 Dollars, 1 Quarter"))
  end

  it("returns plural of quarters of change for 50 cents of input") do
    expect((0.50).coin_change()).to(eq("0 Dollars, 2 Quarters"))
  end

  it("returns plural of quarters and dimes of change for 95 cents of input") do
    expect((0.95).coin_change()).to(eq("0 Dollars, 3 Quarters, 2 Dimes"))
  end

  it("returns plural of quarters and dimes and nickels of change for 65 cents of input") do
    expect((0.65).coin_change()).to(eq("0 Dollars, 2 Quarters, 1 Dime, 1 Nickel"))
  end

  it("returns plural of quarters, dimes, nickels, and pennies of change for 67 cents of input") do
    expect((0.67).coin_change()).to(eq("0 Dollars, 2 Quarters, 1 Dime, 1 Nickel and 2 Pennies"))
  end


    it("returns dollars and number of coins for values over one dollar") do
      expect((1.67).coin_change()).to(eq("1 Dollar, 2 Quarters, 1 Dime, 1 Nickel and 2 Pennies"))
    end
end
