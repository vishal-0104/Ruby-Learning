# app/controllers/posts_controller.rb
class PostsController < ApplicationController
  include ActionView::RecordIdentifier

  # we are using this for rails filteration
  
  before_action :set_post, only: %i[show edit update destroy]

  def index
    @posts = Post.all
  end
   
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(post_params)
    respond_to do |format|
      if @post.save
        format.turbo_stream do
          render turbo_stream: [
            turbo_stream.append('posts', partial: 'posts/post', locals: { post: @post }),
            turbo_stream.replace('post_form', partial: 'posts/form', locals: { post: Post.new })
          ]
        end
        format.html { redirect_to posts_path, notice: 'Post was successfully created.' }
      else
        format.turbo_stream { render turbo_stream: turbo_stream.replace('post_form', partial: 'posts/form', locals: { post: @post }) }
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @post.update(post_params)
        format.turbo_stream do
          render turbo_stream: [
            turbo_stream.replace(@post, partial: 'posts/post', locals: { post: @post }),
            turbo_stream.update('post_form', '')
          ]
        end
        format.html { redirect_to posts_path, notice: 'Post was successfully updated.' }
      else
        format.turbo_stream { render turbo_stream: turbo_stream.replace('post_form', partial: 'posts/form', locals: { post: @post }) }
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @post.destroy
    respond_to do |format|
      format.turbo_stream { render turbo_stream: turbo_stream.remove(dom_id(@post)) }
    format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
    end
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content)
  end
end