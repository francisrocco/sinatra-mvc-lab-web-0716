require 'pry'
class PigLatinizer

  def piglatinize(word)
    vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
    consonants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z', 'B', 'C', 'D', 'F', 'G', 'H', 'J', 'K', 'L', 'M', 'N', 'P', 'Q', 'R', 'S', 'T', 'V', 'W', 'X', 'Y', 'Z']

    if vowels.include?(word[0])
      return word + 'way'
    elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
      return word[3..-1] + word[0..2] + 'ay'
    elsif consonants.include?(word[0]) && consonants.include?(word[1])
      return word[2..-1] + word[0..1] + 'ay'
    elsif consonants.include?(word[0])
      return word[1..-1] + word[0] + 'ay'
    else
      return word
    end
  end

  def to_pig_latin(phrase)
    phrase_array = phrase.split(" ")
    piglatinized = []
    phrase_array.each do |word|
      piglatinized << piglatinize(word)
    end
    piglatinized.join(" ")
  end

end
