require 'test_helper'

class ConsiderationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get consideration_index_url
    assert_response :success
  end

  test "should get show" do
    get consideration_show_url
    assert_response :success
  end

end
