require 'rails_helper'

RSpec.describe "movies/edit", :type => :view do
  before(:each) do
    @movie = assign(:movie, Movie.create!(
      :title => "MyString",
      :description => "MyText",
      :movie_length => "MyString",
      :avatar => "MyString",
      :youtube_url => "MyString",
      :release_year => "MyString"
    ))
  end

  it "renders the edit movie form" do
    render

    assert_select "form[action=?][method=?]", movie_path(@movie), "post" do

      assert_select "input#movie_title[name=?]", "movie[title]"

      assert_select "textarea#movie_description[name=?]", "movie[description]"

      assert_select "input#movie_movie_length[name=?]", "movie[movie_length]"

      assert_select "input#movie_avatar[name=?]", "movie[avatar]"

      assert_select "input#movie_youtube_url[name=?]", "movie[youtube_url]"

      assert_select "input#movie_release_year[name=?]", "movie[release_year]"
    end
  end
end
