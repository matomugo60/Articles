class Magazine
    attr_accessor :name, :category
    @@magazines = []

    def initialize(name, category)
        @name = name
        @category = category
        @@magazines << {:name => "#{name}", :category => "#{category}"}

    end


end