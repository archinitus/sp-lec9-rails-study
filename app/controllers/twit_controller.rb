class TwitController < ApplicationController
  def list
    @twits = Twit.all
    @username = session[:username]
  end

  def list_byuser
  end

  def create
    unless params[:username].blank? || params[:contents].blank?
      new_twit = Twit.new
      new_twit.username = params[:username]
      new_twit.contents = params[:contents]
      new_twit.save
    end
    
    redirect_to action: "list"    
  end

  def edit_view
    @id = params[:id]
    @twit = Twit.find(@id)    
  end

  def edit
    unless params[:username].blank? || params[:contents].blank? || params[:id].blank?
      ori_twit = Twit.find(params[:id])
      ori_twit.username = params[:username]
      ori_twit.contents = params[:contents]
      ori_twit.save
    end
    
    redirect_to action: "list"    
  end

  def delete
    @id = params[:id]
    Twit.destroy(@id)
    
    redirect_to action: "list"    
  end
  
  def createComment
    comment = Comment.new
    comment.twit_id = params[:twit_id]
    comment.username = params[:comment_name]
    comment.contents = params[:comment_contents]
    comment.save
    
    redirect_to action: "list"
  end
  
  def deleteComment
    @id = params[:id]
    Comment.destroy(@id)
    
    redirect_to action: "list"
  end
end
