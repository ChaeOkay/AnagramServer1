# anagram submitted by post rather than uri

get '/' do

  erb :index
end  

# controller is listening for request (from view in this case)
post '/word/anagrams/' do
# we made this post uri up
  #the keys in the params hash come from form input name (usually id matches)
  input_word = params[:user_word]
  @anagrams = Word.anagrams(input_word)

  erb :index
end     
