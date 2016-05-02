class GroupsController < ApplicationController
  before_action :authenticate

  def create
    group = current_user.groups.create(group_params)
    if group.valid?
      render json: group
    else
      render json: { errors: user.errors.full_messages }, status: 422
    end
  end

  def index
    render json: current_user.groups
  end

  private
  def group_params
    params.require(:group).permit(:title)
  end
end
