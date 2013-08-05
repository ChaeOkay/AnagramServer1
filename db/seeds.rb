def seed
  IO.readlines('./db/dict.txt').each do |line| 
    Word.create(:value => line.stip, 
                :sorted_chars => line.strip.downcase.split('').sort )
  end  
end

seed
