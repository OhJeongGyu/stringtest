class HomeController < ApplicationController
  def index
  	@all_post = Post.all.reverse

  end

  def write

  	post = Post.new(title: params[:title], content: params[:content])

    if post.save
      redirect_to :back
    else
      render :text => post.errors.messages[:title][0]
    end






  end

  def write_comment
    comment = Comment.new
    comment.content = params[:content_comment]
    comment.post_id = params[:id_of_post]
    comment.save
    redirect_to :back

  end


end
