require_relative '../../lib/simple_calendar/monthly_calendar'


class CookingRecordsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_params, only: [:edit, :update, :destroy]

  def index
    @cooking_records = current_user.cooking_records.includes(:menu).order(start_time: "DESC")
  end

  def new
    @cooking_record = CookingRecord.new(start_time: params[:start_time], menu_id: params[:menu_id])
    @menus = current_user.menus.order(:title)
  end

  def create
    @cooking_record = CookingRecord.new(cooking_record_params)
    @menus = current_user.menus.order(:title)
    if @cooking_record.save
      redirect_to cooking_records_path
    else
      render :new
    end
  end

  def show
    @cooking_records = CookingRecord.where(start_time: params[:id], user_id: current_user.id)
    @cooking_record_new = CookingRecord.new(start_time: params[:id])
  end

  def edit
  end

  def update
    if @cooking_record.update(cooking_record_params)
      redirect_to cooking_record_path(@cooking_record.id)
    else
      render :edit
    end
  end

  def destroy
    if @cooking_record.destroy
      redirect_to cooking_records_path
    else
      render :show
    end
  end

  private

  def cooking_record_params
    params.require(:cooking_record).permit(:start_time, :menu_id).merge(user_id: current_user.id)
  end

  def find_params
    @cooking_record = CookingRecord.find(params[:id])
  end
end
