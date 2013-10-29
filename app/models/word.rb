# require '../../config.ru'

class Word < ActiveRecord::Base


    def self.anagrams(word)
      match_arr =[]

       Word.where("ordered = ?", word.downcase.chars.sort.join).each do |x|
            match_arr << x.text
       end
       match_arr
    end
end
#         each do |w|
#         if  Word.is_anagram?(word, w[:text])
#             match_arr << w[:text]
#           end
#         end
#         match_arr
#     end

#       # def self.is_anagram?(word1, word2)
#       # word1.downcase.split(//).sort == word2.downcase.split(//).sort
#       # end

#     # def self.all
#     # end

# end

# p Word.anagrams("monkey")