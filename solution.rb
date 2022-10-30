require "pry"
class Article
    attr_accessor :author, :magazine, :title
        @@all=[]
    def initialize(author:, magazine:, title:)
        @author=author
        @magazine=magazine
        @title=title
        @@all<<self
    end
    def self.all
        @@all
    end
    end

    class Author<Article
        def initialize name
          @name=name
        end
    end
        
    class Magazine<Article
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
    end
binding.pry