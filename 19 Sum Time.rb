# Using Ruby version: ruby 2.7.1p83 (2020-03-31 revision a0c7c23c9c) [x86_64-linux]
# Your Ruby code here
class Time
  VALID_TIME_REGEX = /^([01]?[0-9]|2[0-3]):[0-5]?[0-9]:[0-5]?[0-9]$/.freeze
  def humanized_time_array(sec)
    time_converting_array = [[86_400, ' day '], [30, ' months '], [12, ' year ']]
    time_converting_array.each_with_object([[sec, nil]]) do |(count, next_name), ary|
      div, prev_name = ary.shift
      quot, remain = div.divmod(count)
      ary.unshift([quot, next_name], [remain, prev_name])
      ary
    end
  end

  def humanized_time_string(sec)
    sec_to_days_string = humanized_time_array(sec).delete_if { |x| (x[0]).zero? || x[1].nil? }.map(&:join).join('& ')
    secs_to_time = Time.at(sec).utc.strftime('%H:%M:%S')
    sec_to_days_string.empty? ? secs_to_time : (sec_to_days_string + '& ' + secs_to_time)
  end

  def validate_time(input)
    input.any? { |time_string| time_string !~ VALID_TIME_REGEX }
  end

  def time_sum(input)
    input.inject(0) do |total, value|
      str_to_int = value.split(':').map(&:to_i)
      total += str_to_int[0] * 3600 + str_to_int[1] * 60 + str_to_int[2]
      total
    end
  end
end
if ARGV.empty?
  print('Please provide an input')
else
  begin
    time = Time.new
    if time.validate_time(ARGV)
      p 'Invalid 24-hour time value'
    else
      total_secs = time.time_sum(ARGV)
      p time.humanized_time_string(total_secs)
    end
  rescue TypeError => e
    puts e
  rescue ArgumentError => e
    puts e
  end
end