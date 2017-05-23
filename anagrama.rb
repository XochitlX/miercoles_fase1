=begin
#Pseudocodigo
GET two differents words
SET order each words alphabetically
IF both are the same
  they are anagrams
ELSE
  they are not anagrams
END_IF
=end

def canonical(word)
  word.chars.sort!.join
end

def are_anagrams?(word1, word2)
  canonical(word1) == canonical(word2)
end

p are_anagrams?("omar", "mora")


=begin
#Pseudocodigo
GET a word and an array of many differents words
SET order each words of the array alphabetically and the word of the parameter
FOR since the first word of the array until the last word of the array
  IF the word evaluated == the word of the parameter
    keep in array_of_anagrams
  END_IF
END_FOR
CALLS array_of_anagrams
=end
def anagrams_for(word, dictionary)
  word = word.chars.sort!.join
  new_dictionary = dictionary.map { |item| item.chars.sort!.join }
  anagram = []
  new_dictionary.each_with_index { |value, item| anagram << dictionary[item] if new_dictionary[item] == word }
  anagram
end

words = ["halo", "amor", "omar", "hola", "ramo"]
p anagrams_for("roma", words) == ["amor", "omar", "ramo"]
p anagrams_for("aloh", words) == ["halo", "hola"]

