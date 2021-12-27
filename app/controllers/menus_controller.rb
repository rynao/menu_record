class MenusController < ApplicationController
  before_action :authenticate_user!
  def index
  end

  def new
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(menu_params)
    if @menu.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def menu_params
    params.require(:menu).permit(:title, :recipe_url, :memo).merge(user_id: current_user.id)
  end
end
