class Magazine
    attr_accessor :name, :category
    @@magazines = []

    def initialize(name, category)
        @name = name
        @category = category
        @@magazines << {:name => "#{name}", :category => "#{category}"}

    end

    def self.all
        @@magazines
    end

    def magazine_contributors
        Article.all.select {|article| article.magazine == @name}    
    end

    def contributors 
        contributors = []

        magazine_contributors.map {|article| article.author}.uniq
    end




end