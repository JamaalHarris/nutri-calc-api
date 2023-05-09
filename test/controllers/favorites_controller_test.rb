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

  test "show" do
    get "/favorites/#{Favorite.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["user_id", "quantity", "favorited_item"], data.keys
  end

  test "update" do
    favorite = Favorite.first
    patch "/favorites/#{favorite.id}.json", params: { quantity: 6 }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal 6, data["quantity"]
  end

  test "destroy" do
    assert_difference "Favorite.count", -1 do
      delete "/favorites/#{Favorite.first.id}.json"
      assert_response 200
    end
  end
end
