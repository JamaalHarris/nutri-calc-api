require "test_helper"

class FavoritesControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/favorites.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Favorite.count, data.length
  end

  test "create" do
    assert_difference "Favorite.count", 1 do
      post "/favorites.json", params: { user_id: User.first.id, quantity: 5, favorited_item: "Big Mac" }
      assert_response 200
    end
  end
end
