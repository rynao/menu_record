require 'rails_helper'

RSpec.describe Menu, type: :model do
  before do
    @menu = FactoryBot.build(:menu)
  end

  describe 'メニューの登録' do
    context 'メニュー登録できるとき' do
      it '全ての項目が存在すれば登録できる' do
        expect(@menu).to be_valid
      end
      it 'recipe_urlは空でも購入できる' do
        @menu.recipe_url = ''
        expect(@menu).to be_valid
      end
      it 'memoは空でも購入できる' do
        @menu.memo = ''
        expect(@menu).to be_valid
      end
      it 'imageは空でも購入できる' do
        @menu.image = nil
        expect(@menu).to be_valid
      end
    end
    context 'メニュー登録できないとき' do
      it 'titleが空では登録できない' do
        @menu.title = ''
        @menu.valid?
        expect(@menu.errors.full_messages).to include("Titleを入力してください")
      end
      it 'userが紐づいていなければ登録できない' do
        @menu.user = nil
        @menu.valid?
        expect(@menu.errors.full_messages).to include("Userを入力してください")
      end
    end
  end
end
