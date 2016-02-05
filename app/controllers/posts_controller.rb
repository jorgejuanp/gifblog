class PostsController < ApplicationController
  def index
    @posts = Post.where('votes >= ?', 5)
    # @posts = Post.all
  end

  # def sort_by_date
  #   @posts = Post.all.order(created_at: :desc)
  # end
  #
  # def sort_by_votes
  #   @posts = Post.all.order(votes: :desc)
  # end
  #
  # def low_rated_index
  #   @posts = Post.where('votes < ?', 5)
  # end

  def new
    @post = Post.new
  end

  def create
    p = Post.new(title: params['post']['title'],
                   gif: params['post']['gif'],
                   votes: params['post']['votes'])
    p.save
    # @post = Post.new(post_params)
    redirect_to posts_path
  end

  def show
    @post = Post.find(params[:id])

  end

  def destroy
  end

  def edit
    @post = Post.find(params[:id])
  end

  def upvote
    @post = Post.find(params[:id])
    @post.votes += 1
    @post.save
    redirect_to post_path
  end

  # private
  # def post_params
  #   params.require(:post).permit(:user_id, :title, :gif, :votes)
  # end
end
