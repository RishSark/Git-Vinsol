# Using Ruby version: ruby 2.7.1p83 (2020-03-31 revision a0c7c23c9c) [x86_64-linux]
# Your Ruby code here
class File
    def self.csv_parser(file) 
      File.open(file) do |lines|
        lines.read.split(/\n/).map(&:split).group_by { |x| x[2] }.sort.to_h.each do |pair|
          key, val = pair
          next if key == 'Designation'
  
          val = val.map(&:join)
          File.open("#{key}.csv", 'w') do |values|
            values.write(val.join("\n"))
          end
        end
      end
    end
  end
  if ARGV.empty?
    print('Please provide an input')
  else
    File.csv_parser(ARGV[0])
  end