class CookingRecordsController < ApplicationController
  before_action :authenticate_user!
  def index
    @cooking_records = current_user.cooking_records.includes(:menu).order(cooking_date: "DESC")
  end

  def new
    @cooking_record = CookingRecord.new
  end

  def create
    @cooking_record = CookingRecord.new(cooking_record_params)
    if @cooking_record.save
      redirect_to cooking_records_path
    else
      render :new
    end
  end

  private

  def cooking_record_params
    params.require(:cooking_record).permit(:cooking_date).merge(user_id: current_user.id, menu_id: params[:menu_id])
  end
end
