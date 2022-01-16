require 'rails_helper'

RSpec.describe CookingRecord, type: :model do
  describe '献立記録の登録' do
    before do
      @cooking_record = FactoryBot.build(:cooking_record)
    end

    context '献立記録が登録できるとき' do
      it '全ての項目が存在すれば登録できる' do
        expect(@cooking_record).to be_valid
      end
    end
    context '献立記録が登録できないとき' do
      it 'start_timeが空では登録できない' do
        @cooking_record.start_time = ''
        @cooking_record.valid?
        expect(@cooking_record.errors.full_messages).to include("Start timeを入力してください")
      end
      it 'userが紐づいていなければ登録できない' do
        @cooking_record.user = nil
        @cooking_record.valid?
        expect(@cooking_record.errors.full_messages).to include("Userを入力してください")
      end
      it 'menuが紐づいていなければ登録できない' do
        @cooking_record.menu = nil
        @cooking_record.valid?
        expect(@cooking_record.errors.full_messages).to include("Menuを入力してください")
      end
    end
  end
end