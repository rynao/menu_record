class MenusController < ApplicationController
  before_action :authenticate_user!
  before_action :find_params, only: [:show, :edit, :update, :destroy]
  before_action :confirm_user, except: [:index, :new, :create, :search]

  def index
    menus = Menu.find_by_sql(["
      SELECT title, MAX(start_time), m.id
      FROM menus m
      LEFT OUTER JOIN cooking_records c ON m.id = c.menu_id
      GROUP BY title
      ORDER BY MAX(start_time)"])

    @menus = current_user.menus
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

  def show
    @last_cook_day = @menu.cooking_records.order(start_time: :desc).first
  end

  def edit
  end

  def update
    if @menu.update(menu_params)
      redirect_to menu_path(@menu.id)
    else
      render :edit
    end
  end

  def destroy
    if @menu.destroy
      redirect_to menus_path, notice:"削除しました"
    else
      render :show
    end
  end

  def search
    @menus = Menu.search(params[:keyword],current_user.id)
  end

  private

  def menu_params
    params.require(:menu).permit(:title, :recipe_url, :memo, :image).merge(user_id: current_user.id)
  end

  def find_params
    @menu = Menu.find(params[:id])
  end

  def confirm_user
    if current_user.id != @menu.user_id
      redirect_to new_user_session_path
    end
  end
end
