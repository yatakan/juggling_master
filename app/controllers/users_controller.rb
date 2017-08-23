class UsersController < ApplicationController
  def show
    @diarys = User.find(params[:id]).diarys.order('id DESC').limit(5)
    @nickname = User.find(params[:id]).nickname
  end
end
