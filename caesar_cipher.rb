# Accept input and shift value from user and return the caesar cipher of the input string
def main
  input_str = gets.chomp
  shift_value = gets.chomp.to_i
  puts "Caesar says - #{caesar_cipher(input: input_str, shift_value: shift_value)}"
end

def caesar_cipher(input: "", shift_value: 0)
  # Split the string into an array of characters
  # then join it back into 1 string and return to the user.
  string = input.chars.map{|char| shift_char(char, shift_value)}.join
  return string
end

# Shift the character by the shift value
def shift_char(char,shift_value)
  # Check if the character is upper case
  # or lower case and set the base accordingly
  base = char.ord < 91 ? 65 : 97
  # If the character is a letter, not punctuation or whitespace
  if char.ord.between?(65,90) || char.ord.between?(97,122)
    # return the shifted character
    return (((char.ord - base + shift_value) % 26) + base).chr
  else
    # Return the character as is (punctuation or whitespace)
    return char
  end
end

main()
