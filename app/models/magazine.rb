class Magazine
  @@all=[]
    attr_accessor :name,:category
    def initialize(name,category)
         @name=name
         @category=category
         @@all<<self
    end
    def self.all
      @@all
    end
    def contributors
      Article.all.filter{|article|
      article.magazine.name==@name}
      .map{|article|article.author}.uniq
    end
end
