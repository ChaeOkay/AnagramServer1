def seed
  IO.readlines('./db/dict.txt').each do |line| 
    Word.create(:value => line.strip, 
                :sorted_chars => line.strip.downcase.split('').sort.join )
  end  
end

seed
