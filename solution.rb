# Please copy/paste all three classes into this file to submit your solution!
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
        attr_accessor :name,:articles,:magazine
        def initialize 
          @name=name
          @articles=@@all
          @magazine=magazine

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