# frozen_string_literal: true

def caesar_cipher(string, shift)
  # Creates an array for uppercase and lowercase letters as well as spliting the provided string into seperate characters to shift.
  lowercase_letters = ('a'..'z').to_a
  uppercase_letters = ('A'..'Z').to_a
  initial_string = string.split('')
  # The map operator is used to mutate each character since I discovered, quite stupidly, that #each does not provide a changed value.
  # Here we compare each character in the inital string and either return the shifted character or leave it if it does not appear in lowercase or uppercase letters
  # The modulus division by 26 is used to reset to the beginning of the alphabet since it will provide the remainder which will start at 0 once it goes past the index of z
  final_string = initial_string.map do |character|
    if lowercase_letters.include?(character)
      index = (lowercase_letters.index(character) + shift) % 26
      lowercase_letters[index]
    elsif uppercase_letters.include?(character)
      index = (uppercase_letters.index(character) + shift) % 26
      uppercase_letters[index]
    else
      character
    end
  end
  final_string.join('')
end

puts caesar_cipher('What a string!', 5)
