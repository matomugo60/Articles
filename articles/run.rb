require 'pry'

require_relative './config/environment'


# new authors
author_1 = Author.new("Sarah Abraham")
author_2 = Author.new("Michael Jordan")
author_3 = Author.new("Patricia Young")

# new magazines
magazine_1 = Magazine.new("Life in Crime", "The Sequel")
magazine_2 = Magazine.new("Basketball", "The Good Shoes")
magazine_3 = Magazine.new("Cooking Made Easy", "Cereals")

# new articles
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


# Inserting new data
puts "MAGAZINE APP!"
puts "INSERT NEW DATA"

# New Author
puts "New Author :"
authorname = gets.chomp
author_new = Author.new(authorname)

# New Magazine
puts "New Magazine :"
newmagazine = gets.chomp

# New Magazine Category
puts "New Magazine Category :"
newcategory = gets.chomp

# New Magazine and Category
magazine_new = Magazine.new(newmagazine, newcategory)

# New Article
puts "New Article :"
article_new = gets.chomp

# New Article that returns new Author and new Magazine
new_article = Article.new(author_new, magazine_new, article_new)

# List of all Authors
puts "Type (Authors) to view all authors"

user = gets.chomp

if user == "Authors"
    Author.all.each {|author| 
puts "Name: #{author.name}"
}
end

# List of all Magazines
puts "Type (Magazines) to view all magazines"

user = gets.chomp

if user == "Magazines"
    Magazine.all.each {|magazine| 
puts "Magazine Name : #{magazine.name}"
}
end

# List of all Articles 
puts "Type (Articles) to view all articles"

user = gets.chomp

if user == "Articles"
    Article.all.each {|article|
puts "Article Name : #{article.title}"
}
end

# List of all Topics
puts "Type (Topics) to view all titles"

user = gets.chomp

if user == "Topics"
    Magazine.all.each {|magazine|
puts "Topic Name: #{magazine.category}"
}
end

# Look for magazine by name
puts "Search for a magazine by using its name"
user = gets.chomp

Magazine.all.each do |magazine|
    if magazine.name == user
        puts "Name : #{magazine.name}"
    end
end




# Uncomment binding.pry to test individual data

 #binding.pry
