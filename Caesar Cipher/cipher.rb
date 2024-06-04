# frozen_string_literal: true

def caesar_cipher(string, shift)
  ord_arr = string.split('').map do |char|
    # only convert if letter
    if char.ord.between?(65, 90) || char.ord.between?(97, 122)
      char.ord
    else
      char
    end
  end
  # p ord_arr

  shift_arr = ord_arr.map do |int|
    # p int
    if int.is_a? Numeric
      # if upper case
      if int.between?(65, 90)
        # can't shift more than the letters of the alphabet
        shift %= 26
        # wrap around
        if int + shift > 90
          ((int + shift) % 91) + 65
        # no need to wrap around
        else
          ((int + shift) % 91)
        end

      elsif int.between?(97, 122)
        shift %= 26
        if int + shift > 122
          ((int + shift) % 123) + 97
        else
          ((int + shift) % 123)
        end
      end
    else
      int
    end
  end

  # puts "shift_arr"
  # p shift_arr

  cipher_string = shift_arr.map do |int|
    if int.is_a? Numeric
      int.chr
    else
      int
    end
  end

  cipher_string.join('')
  # p cipher_string
end

caesar_cipher('What a string!', 5)
# caesar_cipher("AaZz", 1)
# caesar_cipher("GDKKN", 27)
# caesar_cipher("AZ!!!*(&#*&,.,,.)AKGJALKBJ", 1)
