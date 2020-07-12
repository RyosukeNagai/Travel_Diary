require 'test_helper'

class ShiorisControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shioris_index_url
    assert_response :success
  end

  test "should get new" do
    get shioris_new_url
    assert_response :success
  end

  test "should get show" do
    get shioris_show_url
    assert_response :success
  end

  test "should get edit" do
    get shioris_edit_url
    assert_response :success
  end

end
