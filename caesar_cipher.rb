def caesar_cipher(str, num)
  new_str = ''

  str.each_char do |char|
    if char =~ /[A-Za-z]/

      char_num = if char =~ /[a-z]/
                   char.ord - 'a'.ord + 1
                 else
                   char.ord - 'A'.ord + 1
                 end

      char_num = (char_num + num - 1) % 26 + 1
      new_str << if char =~ /[a-z]/
                  (char_num + 'a'.ord - 1).chr
                else
                  (char_num + 'A'.ord - 1).chr
                end

    else
      new_str << char
    end
  end

  new_str
end

p caesar_cipher('hello world', 2)
