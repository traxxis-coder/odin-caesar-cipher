def caesar_cipher(string, shift)
  letters = {
  1 => "a",
  2 => "b",
  3 => "c",
  4 => "d",
  5 => "e",
  6 => "f",
  7 => "g",
  8 => "h",
  9 => "i",
  10 => "j",
  11 => "k",
  12 => "l",
  13 => "m",
  14 => "n",
  15 => "o",
  16 => "p",
  17 => "q",
  18 => "r",
  19 => "s",
  20 => "t",
  21 => "u",
  22 => "v",
  23 => "w",
  24 => "x",
  25 => "y",
  26 => "z"
  }
  if shift > 26
    shift = shift % 26
  elsif shift < 1
    shift = (26 + shift) % 26
  end
  word_array = string.split
  word_array.map! do |word|
    word.split("").map do |letter|
      if letters.values.include?(letter.downcase)
        up_case = letter.upcase == letter
        index = letters.key(letter.downcase)
        up_case ? letters[(index + shift) % 26].upcase : letters[(index + shift) % 26]
      else
        letter
      end
    end.join("")
  end.join(" ")
end

puts "Enter the string you want to use Caesar's cipher on:"
string = gets.chomp

puts "Enter the shift value for the cipher:"
shift = gets.chomp.to_i

puts caesar_cipher(string, shift)