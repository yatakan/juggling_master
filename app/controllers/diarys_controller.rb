class DiarysController < ApplicationController

before_action :authenticate_user!, only: :new

  def index
    @diarys = Diary.order('id DESC').page(params[:page]).per(5)
  end

  def show
    @diary = Diary.find(params[:id])
  end

  def new
    @diary = Diary.new
  end

  def create
    Diary.create(params_permit)
  end

  private
  def params_permit
    params.require(:diary).permit(:title,:text).merge(user_id: current_user.id)
  end
end
