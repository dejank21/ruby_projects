def caesar_cipher(string, shift)

  # Creates an array for uppercase and lower case letters as well as spliting the provided string into seperate characters to shift. 
  
  lowercase_letters = ('a'..'z').to_a
  uppercase_letters = ('A'..'Z').to_a
  initial_string = string.split('')
 
  # Here we compare each character in the inital string and either return the shifter character or leave it if it does not appear in lowercase or uppercase letters
  
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