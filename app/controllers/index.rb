get '/:word' do
  @input_word = params[:word]
  erb :index
end

# controller is listening for request (from view in this case)
post '/word/anagrams/' do
# we made this post uri up
  #the keys in the params hash come from form input IDs
  
end     
