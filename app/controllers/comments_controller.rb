# frozen_string_literal: true

class CommentsController < ApplicationController
  respond_to :js, :html, :json

def create
  @current_id = current_user.id
  @comment = params["comment"]["comment"]
  puts @comment
  Comment.create(comment: @comment, user_id: @current_id, post_id: session[:post_id])
  redirect_to posts_path
end

def new
  session[:post_id] = params["post_id"]
  #@post_id = params["post_id"]
  @comment = Comment.new
end
  
end
