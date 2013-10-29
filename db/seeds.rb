require_relative '../app/models/word.rb'
# require '../config/'

 File.open('db/word.txt', "r").each_line do |line|
  Word.create(:text => line.chomp, :ordered => line.chomp.downcase.chars.sort.join)
  end


