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
    def self.find_by_name(name)
      Magazine.all.find{|magazine|
      magazine.name==name}
    end
    def article_titles
      Article.all.filter{|article|
        article.magazine.name==@name}
        .map{|article|article.title}
    end
    # def contributing_authors
    #   Article.all.filter{|article|
    #     article.magazine.name==@name}
    #     .
    # end
end
