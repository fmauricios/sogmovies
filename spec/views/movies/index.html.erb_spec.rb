require 'rails_helper'

RSpec.describe "movies/index", :type => :view do
  before(:each) do
    assign(:movies, [
      Movie.create!(
        :title => "Title",
        :description => "MyText",
        :movie_length => "Movie Length",
        :avatar => "Avatar",
        :youtube_url => "Youtube Url",
        :release_year => "Release Year"
      ),
      Movie.create!(
        :title => "Title",
        :description => "MyText",
        :movie_length => "Movie Length",
        :avatar => "Avatar",
        :youtube_url => "Youtube Url",
        :release_year => "Release Year"
      )
    ])
  end

  it "renders a list of movies" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Movie Length".to_s, :count => 2
    assert_select "tr>td", :text => "Avatar".to_s, :count => 2
    assert_select "tr>td", :text => "Youtube Url".to_s, :count => 2
    assert_select "tr>td", :text => "Release Year".to_s, :count => 2
  end
end
