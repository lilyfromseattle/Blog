class Post
  attr_accessor :title, :content, :url
  def initialize(title, content, url)
  end

  #access posts, files within views/posts
  #title, content, url
  #read my list of post files
  #create an array of post objects
  #with the attributes set
  #Post.all => [post, post, post]

  def self.all
    Dir.glob("views/posts/*").each do |post|
    end
  end
end
