class RelationshipsController < ApplicationController
  before_action :authenticate_user

  def create
    @relationship = Relationship.new(follower_id: @current_user.id, follwed_id: params[:user_id])
    @relationship.save
    redirect_to("/users/#{params[:user_id]}")
  end

  def destroy
    @relationship = Relationship.find_by(follower_id: @current_user.id, follwed_id: params[:user_id])
    @relationship.destroy
    redirect_to("/users/#{params[:user_id]}")
  end

end
