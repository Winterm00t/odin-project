def main
  input_str = "What a string!"
  shift_value = 5
  puts "Caesar says - #{caesar_cipher(input: input_str, shift_value: shift_value)}"
end

def caesar_cipher(input: "", shift_value: 0)
  # Split the string into an array of characters
  string = input.chars.map{|char| shift_char(char, shift_value)}.join
  return string
end

def shift_char(char,shift_value)
  base = char.ord < 91 ? 65 : 97
  if char.ord.between?(65,90) || char.ord.between?(97,122)
    return (((char.ord - base + shift_value) % 26) + base).chr
  else
    return char
  end
end

main()
