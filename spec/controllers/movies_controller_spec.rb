require 'rails_helper'

RSpec.describe MoviesController, :type => :controller do

  describe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "assigns the requested movie to @movie" do
      movie = create(:movie)
      get :show, id: movie
      expect(response).to have_http_status(:success)
    end
  end

end
