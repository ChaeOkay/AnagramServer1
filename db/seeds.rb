def seed
  IO.readlines('./db/dict.txt').each do |line| 
    Word.create(:value => line)
  end  
end

seed
