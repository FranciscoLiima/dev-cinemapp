require 'test_helper'

class FavoritemoviesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @favoritemovie = favoritemovies(:one)
  end

  test "should get index" do
    get favoritemovies_url
    assert_response :success
  end

  test "should get new" do
    get new_favoritemovie_url
    assert_response :success
  end

  test "should create favoritemovie" do
    assert_difference('Favoritemovie.count') do
      post favoritemovies_url, params: { favoritemovie: {  } }
    end

    assert_redirected_to favoritemovie_url(Favoritemovie.last)
  end

  test "should show favoritemovie" do
    get favoritemovie_url(@favoritemovie)
    assert_response :success
  end

  test "should get edit" do
    get edit_favoritemovie_url(@favoritemovie)
    assert_response :success
  end

  test "should update favoritemovie" do
    patch favoritemovie_url(@favoritemovie), params: { favoritemovie: {  } }
    assert_redirected_to favoritemovie_url(@favoritemovie)
  end

  test "should destroy favoritemovie" do
    assert_difference('Favoritemovie.count', -1) do
      delete favoritemovie_url(@favoritemovie)
    end

    assert_redirected_to favoritemovies_url
  end
end
