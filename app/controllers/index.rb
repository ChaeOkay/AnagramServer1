get '/:word' do
  @input_word = params[:word]
  erb :index
end
