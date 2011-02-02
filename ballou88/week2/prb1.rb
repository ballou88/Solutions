months = [31, 28, 31, 30, 31, 30, 31, 31, 
           30, 31, 30, 31]
sunday = 0
counter = 0
years = (1901..2000).to_a

years.each do |year|
  months.each_with_index do |month, index|
    if (index == 2 and (year%4 == 0) and (year%400))
      counter += 29
    else
      counter += month
    end
    sunday += 1 if counter%7 == 0
  end
end

p sunday
