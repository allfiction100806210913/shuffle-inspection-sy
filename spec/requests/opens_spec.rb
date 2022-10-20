require 'rails_helper'
describe OpensController, type: :request do

  before do
    @library = FactoryBot.create(:library)
  end

  describe 'GET #index' do
    it 'indexアクションにリクエストすると正常にレスポンスが返ってくる' do 
      get opens_path
      expect(response.status).to eq 200
    end
  end
end