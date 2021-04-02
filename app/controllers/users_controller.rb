class UsersController < ApplicationController
  def  show
    @user = User.find(params[:id])
    @prototypes = @user.prototypes

    @all_ranks = User.find(Prototype.group(:id).order('count(id) desc').limit(2).pluck(:id))

  end
end
