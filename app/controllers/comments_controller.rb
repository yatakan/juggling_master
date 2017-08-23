class CommentsController < ApplicationController
  def new
    @diary = diary.find(di)
    @comment = Comment.new
  end
end
