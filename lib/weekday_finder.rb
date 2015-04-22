class String
  define_method(:weekday_finder) do
    date_array = self.split("/")
    year = date_array.at(2)
    month = date_array.at(0)
    day = date_array.at(1)
    date = Time.new(year, month, day)
    if date.monday?()
      "Monday"
    elsif date.tuesday?()
      "Tuesday"
    elsif date.wednesday?()
      "Wednesday"
    elsif date.thursday?()
      "Thursday"
    elsif date.friday?()
      "Friday"
    elsif date.saturday?()
      "Saturday"
    else
      "Sunday"
    end
  end
end
