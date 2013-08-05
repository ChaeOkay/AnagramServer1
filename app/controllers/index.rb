get '/:word' do
  @input_word = params[:word]
  erb :index
end

# post is listening for request (from view in this case)
