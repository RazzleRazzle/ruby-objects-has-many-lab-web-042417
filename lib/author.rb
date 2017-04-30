require 'pry'
class Author
  attr_accessor :name, :posts
    @@all = []
    @@post_count = nil

    def initialize(name)
      @name = name
      @posts = []
    end

    def add_post(post)
      @posts << post
      @@all << post
      post.author = self
    end

    def add_post_by_title(post)
      bestseller = Post.new(post)
      self.add_post(bestseller)
    end

    def self.post_count
      @@post_count = @@all.count
      @@post_count
    end
end
