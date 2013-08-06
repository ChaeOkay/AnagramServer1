require 'spec_helper'

describe Word do

  context "new word" do
    let(:word) { Word.new }


    it "should exist" do
      word.is_a?(Word).should == true
    end

    it "should have a value of nil" do
      word.value.should == nil
    end
  end

  context "database words" do
    random_id = rand(Word.count)
    let(:db_word) { Word.find(random_id) }

    it "should have sorted chars that are correct" do
      db_word.sorted_chars.should == db_word.value.strip.downcase.split('').sort.join
    end
  end

  context "detecting anagrams" do
    input_word = "dog"
    let(:anagrams){ Word.anagrams(input_word) }

    it "should return correct number of anagrams" do
      anagrams.size.should == 3
    end
  end

end
