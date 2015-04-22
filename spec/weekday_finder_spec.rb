require('rspec')
require('weekday_finder')


# return the weekday of the given date

describe('String#weekday_finder') do
  it("returns the weekday of the given date.") do
    expect("4/21/2015".weekday_finder()).to(eq("Tuesday"))
  end
end
