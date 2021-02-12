module Api
    module V1
      class PostsController < ApiController
       #skip_before_action :auth_with_token!, only: [:create,:index]
       def create
        
        #STDOUT.puts ("create")
         @post = Post.new(post_params)
         logger.info("post info")
         logger.info(@post.inspect)
         
       end

       def index
        # @post = posts.all
        # render json: @post
        # logger.info("post info")
        # logger.info(@post.inspect)
       end

       def post_params
         params.require(:post).permit(:body, :receiver_id,:author_id)
       end
      end
    end
end
