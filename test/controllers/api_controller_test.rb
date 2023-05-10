require "test_helper"

class ApiControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/api.json"
    assert_response 200
  end
end
