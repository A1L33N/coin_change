require('rspec')
require('coin_change')

describe('Fixnum#coin_change') do
  it("returns one quarter of change for 25 cents of input") do
    expect((25).coin_change()).to(eq("1 Quarter"))
  end

  it("returns plural of quarters of change for 50 cents of input") do
    expect((50).coin_change()).to(eq("2 Quarters"))
  end
end
