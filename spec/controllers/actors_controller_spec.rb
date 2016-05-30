require 'rails_helper'

RSpec.describe ActorsController, :type => :controller do

  describe "GET #show" do
    it "assigns the requested actor to @actor" do
      actor = create(:actor)
      get :show, id: actor
      expect(response).to have_http_status(:success)
    end
  end

end
