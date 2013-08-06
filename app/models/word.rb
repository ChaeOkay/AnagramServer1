class Word < ActiveRecord::Base
  #value

  validates :sorted_chars, :presence => true
end
