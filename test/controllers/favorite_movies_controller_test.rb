require "test_helper"

class FavoriteMoviesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @favorite_movie = favorite_movies(:one)
  end

  test "should get index" do
    get favorite_movies_url
    assert_response :success
  end

  test "should get new" do
    get new_favorite_movie_url
    assert_response :success
  end

  test "should create favorite_movie" do
    assert_difference('FavoriteMovie.count') do
      post favorite_movies_url, params: { favorite_movie: { date: @favorite_movie.date, title: @favorite_movie.title } }
    end

    assert_redirected_to favorite_movie_url(FavoriteMovie.last)
  end

  test "should show favorite_movie" do
    get favorite_movie_url(@favorite_movie)
    assert_response :success
  end

  test "should get edit" do
    get edit_favorite_movie_url(@favorite_movie)
    assert_response :success
  end

  test "should update favorite_movie" do
    patch favorite_movie_url(@favorite_movie), params: { favorite_movie: { date: @favorite_movie.date, title: @favorite_movie.title } }
    assert_redirected_to favorite_movie_url(@favorite_movie)
  end

  test "should destroy favorite_movie" do
    assert_difference('FavoriteMovie.count', -1) do
      delete favorite_movie_url(@favorite_movie)
    end

    assert_redirected_to favorite_movies_url
  end
end
