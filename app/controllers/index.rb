get '/' do

erb :index
end

post '/anagram' do
      @array=Word.anagrams(params[:user_input])
  erb :index
end
