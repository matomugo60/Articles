class Author
    attr_reader :name
    @@all= []

    def initialize(name)
        @name = name 
        @@all << self
    end

    def articles
        Article.all.select {|article| article.author == self}
    end

    def magazines
        self.articles.map {|article| article.magazine}.uniq
    end




end