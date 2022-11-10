require "test_helper"

module WeatherApp
  class WeatherControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get index" do
      get weather_index_url
      assert_response :success
    end

    test "should get create" do
      get weather_create_url
      assert_response :success
    end
  end
end
