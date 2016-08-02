class Blog

	@@all_blog_posts = []
	@@num_blog_posts = 0

	def initialize
		@@num_blog_posts += 1 
	end

	def self.current_count
		puts "There are currently #{@@num_blog_posts} blog posts"
	end

	def self.display_posts
		@@all_blog_posts.each do |post|
			puts "Title:\n #{post.title}"
			puts "Content:\n #{post.content}"
			puts "Created at:\n #{post.created_at}" 
		end
	end

end



class BlogPost < Blog

	attr_accessor :title, :content, :created_at

	def self.create
		post = new
		puts "Your blog post name:"
		post.title = gets.chomp
		puts "Your blog post content:"
		post.content = gets.chomp  
		post.created_at = Time.now
		post.save(post)
		puts "Would you like to create another blog post? [Y/N]"
		create if gets.chomp.downcase == "y"
	end	

	def save(post) 
		@@all_blog_posts << post
	end

end



BlogPost.create
Blog.display_posts # how to display the blogpost instance method information instead of the object id of BlogPost
