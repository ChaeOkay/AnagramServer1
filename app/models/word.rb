class Word < ActiveRecord::Base
  #value

  validates :sorted_chars, :presence => true

  def self.anagrams(input_word)
    sorted_word = input_word.strip.downcase.split('').sort.join
    Word.where(:sorted_chars => sorted_word)
    #active record query
  end

end
