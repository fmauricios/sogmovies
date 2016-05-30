require "administrate/base_dashboard"

class MovieDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    title: Field::String,
    description: Field::Text,
    movie_length: Field::String,
    youtube_url: Field::String,
    release_year: Field::DateTime,
    cached_votes_total: Field::String,
    user: Field::BelongsTo.with_options(class_name: "User"),
    movie_type: Field::BelongsTo,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    avatar: PaperclipField,
    genres: Field::HasMany,
    directors: Field::HasMany,
    actors: Field::HasMany,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :title,
    :description,
    :genres,
    :directors,
    :actors,
    :movie_length,
    :release_year,
    :cached_votes_total
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :title,
    :description,
    :movie_length,
    :youtube_url,
    :user,
    :movie_type,
    :release_year,
    :cached_votes_total,
    :created_at,
    :updated_at
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :title,
    :description,
    :movie_length,
    :youtube_url,
    :release_year,
    :avatar,
    :genres,
    :movie_type,
    :directors,
    :actors,
  ].freeze

  # Overwrite this method to customize how movies are displayed
  # across all pages of the admin dashboard.

  def display_resource(movie)
    "#{movie.id} - #{movie.title}"
  end
end
