require 'pry'

require_relative './lib/article'
require_relative './lib/author'
require_relative './lib/magazine'


author_1 = Author.new("Sarah Abraham")
author_2 = Author.new("Michael Jordan")
author_3 = Author.new("Patricia Young")


magazine_1 = Magazine.new("Life in Crime", "The Sequel")
magazine_2 = Magazine.new("Basketball", "The Good Shoes")
magazine_3 = Magazine.new("Cooking Made Easy", "Cereals")


article_1 = Article.new(author_3, magazine_1.name, "Menu")
article_2 = Article.new(author_3, magazine_1.name, "Secret Recipe")
article_3 = Article.new(author_2, magazine_1.name, "Energy  Drinks")
article_4 = Article.new(author_1, magazine_1.name, "Guns")
article_5 = Article.new(author_2, magazine_2.name, "New Drip")
article_6 = Article.new(author_1, magazine_2.name, "Where To Buy Them!")

# Search for Author, Magazine and Article
puts "Author: #{author_1.name}"
puts "Magazine: #{magazine_1.name}, #{magazine_1.category}"
puts "Article: #{article_1.title}"

# Search for All Authors, Magazines and Articles
puts "All Authors : #{Author.all.inspect}"
puts "All Magazines: #{Magazine.all.inspect}"
puts "All Articles: #{Article.all.inspect}"



# Print information looked for
puts Magazine.find_by_name(magazine_1.name)


# Uncomment binding.pry to test individual data

# binding.pry
