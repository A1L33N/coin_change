require('rspec')
require('coin_change')

describe('Fixnum#coin_change') do
  it("returns one quarter of change for 25 cents of input") do
    expect((25).coin_change()).to(eq("1 Quarter"))
  end
end
