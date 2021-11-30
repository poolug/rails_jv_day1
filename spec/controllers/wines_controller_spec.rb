require 'rails_helper'

RSpec.describe WinesController, type: :controller do
  describe "GET /index" do
    it 'mostrar el index con éxito' do
      get :index
      expect(response).to be_successful 
    end
  end
end
