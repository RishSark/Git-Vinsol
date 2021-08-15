  class Numeric
    def fibonacciseries
      prev_no = 0
      next_no = 1
      while next_no <= self
        print next_no.to_s + ' '
        prev_no, next_no = next_no, next_no + prev_no
      end
    end
  end
  if ARGV.empty?
    print('Please provide an input')
  else
    ARGV[0].to_i.fibonacciseries
  end