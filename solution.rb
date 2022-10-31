class Article
    attr_reader :magazine, :title
        @@all=[]
    def initialize(author, magazine, title)
        @author=author
        @magazine=magazine
        @title=title
        @@all<<self
    end
    def self.all
        @@all
    end
    def author
        @author.name
    end
end

class Author
    attr_reader :name
    def initialize name
      @name=name
    end
    def article
        Article.all.filter do |article|
          article.author==@name
        end
    end
    def magazines
      articles.map{|article| article.magazine}.uniq
    end
    def add_article(magazine,title)
      Article.new(self,magazine,title)
    end
    def topic_areas
      magazines.map{|magazine|magazine.category}.uniq
    end
  end
        
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