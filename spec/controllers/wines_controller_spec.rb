require 'rails_helper'
require_relative '../support/devise'

RSpec.describe WinesController, type: :controller do
  describe "GET /index" do
    login_user

    it 'mostrar el index con éxito' do
      get :index
      expect(response).to be_successful 
    end
  end
end
