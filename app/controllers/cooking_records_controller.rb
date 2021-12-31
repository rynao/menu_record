class CookingRecordsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_params, only: [:show, :edit, :update, :destroy]
  def index
    @cooking_records = current_user.cooking_records.includes(:menu).order(start_time: "DESC")
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

  def show
  end

  def edit
  end

  def update
    if @cooking_record.update(cooking_record_params)
      redirect_to cooking_record_path(@cooking_record.id), notice:"編集しました"
    else
      render :edit
    end
  end

  def destroy
    if @cooking_record.destroy
      redirect_to cooking_records_path, notice:"削除しました"
    else
      render :show
    end
  end

  private

  def cooking_record_params
    params.require(:cooking_record).permit(:start_time).merge(user_id: current_user.id, menu_id: params[:menu_id])
  end

  def find_params
    @cooking_record = CookingRecord.find(params[:id])
  end
end
