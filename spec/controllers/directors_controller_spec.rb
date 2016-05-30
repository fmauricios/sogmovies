require 'rails_helper'

RSpec.describe DirectorsController, :type => :controller do

  describe "GET #show" do
    it "assigns the requested director to @director" do
      director = create(:director)
      get :show, id: director
      expect(response).to have_http_status(:success)
    end
  end

end
