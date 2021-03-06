class PrototypesController < ApplicationController
  before_action :authenticate_user!, only: [:new,:edit,:destory]
  before_action :set_prototype, only: [:show, :edit, :update]
  before_action :search_prototype, only: [:index, :search]

  def index
  @prototypes = Prototype.all.order(id: "DESC")
  end

  def new
    @prototype = Prototype.new
  end

  def create
    @prototype = Prototype.new(prototypes_params)
    if @prototype.save
       redirect_to prototype_path(@prototype.id)
    else
      render :new
    end
  end

  def show
    @comment = Comment.new
    @comments = @prototype.comments.includes(:user)
    # @prototype = Prototype.find(params[:id])
  end

  def edit
    unless user_signed_in?
      redirect_to action: :index
    end
    # @prototype = Prototype.find(params[:id])
  end

  def update
    @prototype = Prototype.find(params[:id])
    if @prototype.update(prototypes_params)
      redirect_to prototype_path
    else
      render :edit
    end
  end

  def destroy
    @prototype = Prototype.find(params[:id])
    if @prototype.destroy
      redirect_to root_path
    end
  end

  def search
    @prototype = @p.result
  end


  def free_search
    @prototypes = Prototype.search(params[:keyword])
  end

  private

  def prototypes_params
    params.require(:prototype).permit(:title, :catch_copy,:folder_id ,:level_id ,:errortittle_id).merge(user_id: current_user.id)
  end
  
  def set_prototype
    @prototype = Prototype.find(params[:id])
  end

  def search_prototype
    @p = Prototype.ransack(params[:q])  # 検索オブジェクトを生成
  end

end