require "application_system_test_case"

class FavoriteMoviesTest < ApplicationSystemTestCase
  setup do
    @favorite_movie = favorite_movies(:one)
  end

  test "visiting the index" do
    visit favorite_movies_url
    assert_selector "h1", text: "Favorite Movies"
  end

  test "creating a Favorite movie" do
    visit favorite_movies_url
    click_on "New Favorite Movie"

    fill_in "Date", with: @favorite_movie.date
    fill_in "Title", with: @favorite_movie.title
    click_on "Create Favorite movie"

    assert_text "Favorite movie was successfully created"
    click_on "Back"
  end

  test "updating a Favorite movie" do
    visit favorite_movies_url
    click_on "Edit", match: :first

    fill_in "Date", with: @favorite_movie.date
    fill_in "Title", with: @favorite_movie.title
    click_on "Update Favorite movie"

    assert_text "Favorite movie was successfully updated"
    click_on "Back"
  end

  test "destroying a Favorite movie" do
    visit favorite_movies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Favorite movie was successfully destroyed"
  end
end
