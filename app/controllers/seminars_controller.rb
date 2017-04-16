class SeminarsController < ApplicationController
  before_action :authenticate_user!, except: [:index,:search]

  def index
    @seminars= Seminar.order('created_at DESC').page(params[:page]).per(6)
  end

  def show
    @seminar = Seminar.find(params[:id])
    @articles= @seminar.articles.all
    @article = Article.new
    @name = current_user
  end

  def new
    @seminar = Seminar.new
  end

  def create
   Seminar.create(seminar_params)
  end

  def edit
  end

  def update
    seminar = Seminar.find(params[:id])
  end

  def destroy
    seminar = Seminar.find(params:[id])
    seminar.delete if seminar.user_id == current_user.id
  end

  def search
    @seminar = Seminar.where('title LIKE(?)',"%#{params[:keyword]}%").order('created_at DESC').page(params[:page]).per(6)
  end

private
  def seminar_params
   params.require(:seminar).permit(:title,:concept,:photo_all,:participants,:num_ppl,:span,:intro_title,:intro,:body_title,:body,:ending_title,:ending,:facilitator,:facilitator_image,:background,:tips,:user_id,:time_table)
  end

  def seminar_id
    @seminar = Seminar.find(params[:id])
  end

end
