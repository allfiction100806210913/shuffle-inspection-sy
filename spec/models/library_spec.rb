require 'rails_helper'

 RSpec.describe Library, type: :model do
   before do
    @library = FactoryBot.build(:library)
   end

   describe 'カード新規登録' do
     context '保存できるとき' do
     it '必要な情報を適切に入力して「保存する」ボタンを押すと、カード情報がデータベースに保存されること' do
     expect(@library).to be_valid
     end
    end
     context '保存できないとき' do
     it 'card_typeが必須であること' do
       @library.card_type = ''
       @library.valid?
      expect(@library.errors.full_messages).to include("Card type can't be blank")
     end
     it 'numberが必須であること' do
       @library.numbers = ''
       @library.valid?
      expect(@library.errors.full_messages).to include("Numbers can't be blank")
     end
 
    end
  end
end