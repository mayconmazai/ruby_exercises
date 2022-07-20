def agenda_copy(week_start_previous_month, last_day_previous_month, week_start, last_day )
  month_day_start = 1
  last_month_day_start = 1
  copy_month_day_start = 1
  week = 7
  diference = week_start - week_start_previous_month
  copy_month_day_end = 0
  
  if week_start < week_start_previous_month
    copy_month_day_start = month_day_start + diference.abs
    puts "copy_month_day_start = #{copy_month_day_start}"
  elsif week_start > week_start_previous_month
    copy_month_day_start = week_start_previous_month + month_day_start + (week - week_start)
    puts "copy_month_day_start = #{copy_month_day_start}"
  else
    copy_month_day_start = month_day_start
    puts "copy_month_day_start = #{copy_month_day_start}"
  end

  if last_day_previous_month < last_day
    copy_month_day_end = last_day_previous_month
    puts "copy_month_day_end = #{copy_month_day_end}"
  else
    copy_month_day_end = last_day
    puts "copy_month_day_end = #{copy_month_day_end}"
  end
end

puts "Validating the agenda_copy method..."
january = [Time.new(2022, 1, 1).wday, 31]
febuary = [Time.new(2022, 2, 1).wday, 28]
march = [Time.new(2022, 3, 1).wday, 31]
april = [Time.new(2022, 4, 1).wday, 30]
may = [7, 31]
june = [Time.new(2022, 6, 1).wday, 30]
july = [Time.new(2022, 7, 1).wday, 31]
august = [Time.new(2022, 8, 1).wday, 31]
september = [Time.new(2022, 9, 1).wday, 30]
october = [Time.new(2022, 10, 1).wday, 31]
november = [Time.new(2022, 11, 1).wday, 30]
december = [Time.new(2022, 12, 1).wday, 31]
puts '----------------------------------------------------'
puts "january = #{january} to febuary = #{febuary}"
agenda_copy(january[0],january[1],febuary[0],febuary[1])
puts '----------------------------------------------------'
puts "febuary = #{febuary} to march = #{march}"
agenda_copy(febuary[0],febuary[1],march[0],march[1])
puts '----------------------------------------------------'
puts "march = #{march} to april = #{april}"
agenda_copy(march[0],march[1],april[0],april[1])
puts '----------------------------------------------------'
puts "april = #{april} to may = #{may}"
agenda_copy(april[0],april[1],may[0],may[1])
puts '----------------------------------------------------'
puts "may = #{may} to june = #{june}"
agenda_copy(may[0],may[1],june[0],june[1])
puts '----------------------------------------------------'
puts "june = #{june} to july = #{july}"
agenda_copy(june[0],june[1],july[0],july[1])
puts '----------------------------------------------------'
puts "july = #{july} to august = #{august}"
agenda_copy(july[0],july[1],august[0],august[1])
puts '----------------------------------------------------'
puts "august = #{august} to september = #{september}"
agenda_copy(august[0],august[1],september[0],september[1])
puts '----------------------------------------------------'
puts "september = #{september} to october = #{october}"
agenda_copy(september[0],september[1],october[0],october[1])
puts '----------------------------------------------------'
puts "october = #{october} to november = #{november}"
agenda_copy(october[0],october[1],november[0],november[1])
puts '----------------------------------------------------'
puts "november = #{november} to december = #{december}"
agenda_copy(november[0],november[1],december[0],december[1])
puts '----------------------------------------------------'

