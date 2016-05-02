class MembersController < ApplicationController
  before_action :authenticate

  def add_expense

  end

  private
  def expense_params
    params.require(:expense).permit(:title)
  end

end
