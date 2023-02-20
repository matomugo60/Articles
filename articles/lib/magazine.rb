class Magazine
    attr_accessor :name, :category
    @@all = []

    def initialize(name, category)
        @name = name
        @category = category
        @@all << self

    end

    def name
        @name
    end

    def category 
        @category
    end

    def self.all
        @@all
    end

    def magazine_contributors
        Article.all.select {|article| article.magazine == @name}    
    end

    def contributors 
        contributors = []

        magazine_contributors.map {|article| article.author}.uniq
    end

    def self.find_by_name(name)
        @@magazines.find(name) {|magazine| magazine [:name] == name}
    end


    def articles_titles
        articles_titles = []

        Article.all.map {|article| 
        if article.magazine == self.name
        article_titles << article.title
        end}

        article_titles
    end

    def contributing_authors
        contributions = []
        authors = []

        magazine_contributors.select {|author| authors << author.author}

        authors.tally.select {|author, value| value > 2 && contributions << author}

        contributions
    end




end