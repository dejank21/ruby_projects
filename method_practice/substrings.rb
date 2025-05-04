def substrings(string, dictionary)
  # Take the provided string and split it for comparison as well as create an empty hash to store the results
  string_words = string.downcase.split(/[^a-z0-9]/)
  result = Hash.new(0)
  # iterates though each word and sees if it present in the dictionary, if it is then increase the value by 1.
  string_words.each do |word|
    result[word] += 1 if dictionary.include?(word)
  end
  result
end

dictionary = %w[take on me how are you or doing do want to]
# %w lets you create an array of strings without the need for quotes and commas instead seperating with whitespace.
puts substrings("How are you doing, do you want to take me on or take on me?", dictionary)
