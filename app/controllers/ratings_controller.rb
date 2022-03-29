class RatingsController < ApplicationController
  def update
    @menu = Menu.find(params[:id])
    @menu.update(rate: params[:rate])
    render menu_path(@menu.id)
  end
end
