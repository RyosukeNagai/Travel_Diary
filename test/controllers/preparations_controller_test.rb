require 'test_helper'

class PreparationsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get preparations_new_url
    assert_response :success
  end

  test "should get show" do
    get preparations_show_url
    assert_response :success
  end

end
