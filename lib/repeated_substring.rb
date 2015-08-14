

class RepeatedSubstring
  def find_repeated_substring(string)
    # TODO: implement the function
    res = ''
    if string.is_a? String
      len = string.length
      if len > 3
        if string.strip.length > 0
          for sub_len in 2..(len/2) do
            tmp_res = find_repeated_substring_len(string, sub_len)
            if tmp_res != nil
              res = tmp_res
            end
          end
          if res.length > 0
            return res
          end
        end
      end
    end
    return 'NONE'
  end

  def find_repeated_substring_len(string, sub_len)
    for i in 0..(string.length-sub_len) do
      rest_string = string[i+sub_len, string.length]
      test_string = string[i, sub_len]
      if rest_string.include? test_string
         return test_string
      end
    end
    return nil
  end

  def find_repeated_substring_file(file_path)
    File.open(file_path).read.each_line.map { |line| find_repeated_substring(line) }
  end

end

prog = RepeatedSubstring.new
File.open(ARGV[0]).each_line do |line|
  puts prog.find_repeated_substring(line)
end
