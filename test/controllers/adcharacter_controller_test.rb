require 'test_helper'

class AdcharacterControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get adcharacter_index_url
    assert_response :success
  end

  test "should get show" do
    get adcharacter_show_url
    assert_response :success
  end

  test "should get edit" do
    get adcharacter_edit_url
    assert_response :success
  end

  test "should get create" do
    get adcharacter_create_url
    assert_response :success
  end

  test "should get update" do
    get adcharacter_update_url
    assert_response :success
  end

  test "should get delete" do
    get adcharacter_delete_url
    assert_response :success
  end

end
