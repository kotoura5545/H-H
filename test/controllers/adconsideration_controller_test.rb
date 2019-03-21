require 'test_helper'

class AdconsiderationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get adconsideration_index_url
    assert_response :success
  end

  test "should get show" do
    get adconsideration_show_url
    assert_response :success
  end

end
