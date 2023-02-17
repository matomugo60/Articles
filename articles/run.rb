require 'pry'

require_relative './lib/article'
require_relative './lib/author'
require_relative './lib/magazine'


author_1 = Author.new("Jane Doe")
author_2 = Author.new("John Smith")
author_3 = Author.new("Mary Babb")


magazine_1 = Magazine.new("Congrats", "sucess")
magazine_2 = Magazine.new("Avocados", "Fruits")
magazine_3 = Magazine.new("Beans", "Cereals")


article_1 = Article.new(author_3, magazine_1.name, "Great success!")
article_2 = Article.new(author_3, magazine_1.name, " Life of Success ")
article_3 = Article.new(author_2, magazine_1.name, " Coding for Success")
article_4 = Article.new(author_1, magazine_1.name, " Success as a Journey")
article_5 = Article.new(author_2, magazine_2.name, " Benefits of Avocados ")
article_6 = Article.new(author_1, magazine_2.name, " History of Avocados ")


puts "Author: #{author_1.name}"
puts "Magazine: #{magazine_1.name}, #{magazine_1.category}"
puts "Article: #{article_1.title}"
puts "All Magazines: #{Magazine.all.inspect}"
puts "All Articles: #{Article.all.inspect}"




puts Magazine.find_by_name(magazine_1.name)


# Uncomment binding.pry to test individual data

# binding.pry
