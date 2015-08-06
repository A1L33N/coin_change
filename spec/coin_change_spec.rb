require('rspec')
require('coin_change')
require('pry')

describe('Fixnum#coin_change') do
  it("returns one quarter of change for 25 cents of input") do
    expect((25).coin_change()).to(eq("1 Quarter"))
  end

  it("returns plural of quarters of change for 50 cents of input") do
    expect((50).coin_change()).to(eq("2 Quarters"))
  end

  it("returns plural of quarters and dimes of change for 95 cents of input") do
    expect((95).coin_change()).to(eq("3 Quarters, 2 Dimes"))
  end

  it("returns plural of quarters and dimes and nickels of change for 65 cents of input") do
    expect((65).coin_change()).to(eq("2 Quarters, 1 Dime, 1 Nickel"))
  end

  it("returns plural of quarters, dimes, nickels, and pennies of change for 67 cents of input") do
    expect((67).coin_change()).to(eq("2 Quarters, 1 Dime, 1 Nickel and 2 Pennies"))
  end
end
