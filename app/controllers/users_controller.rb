class UsersController < ApplicationController
  def  show
    @user = User.find(params[:id])
    @prototypes = @user.prototypes
    # @all_ranks = User.find(Prototype.group(:id).order('count(id) desc').limit(2).pluck(:id))
    @all_ranks = User.find(Prototype.group(:user_id).order('count(user_id) desc').limit(3).pluck(:user_id))
  end
end
