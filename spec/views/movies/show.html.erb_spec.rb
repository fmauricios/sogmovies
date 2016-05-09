require 'rails_helper'

RSpec.describe "movies/show", :type => :view do
  before(:each) do
    @movie = assign(:movie, Movie.create!(
      :title => "Title",
      :description => "MyText",
      :movie_length => "Movie Length",
      :avatar => "Avatar",
      :youtube_url => "Youtube Url",
      :release_year => "Release Year"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Movie Length/)
    expect(rendered).to match(/Avatar/)
    expect(rendered).to match(/Youtube Url/)
    expect(rendered).to match(/Release Year/)
  end
end
