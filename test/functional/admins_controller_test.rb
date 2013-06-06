require 'test_helper'

class AdminsControllerTest < ActionController::TestCase
  test "should get upload_avatar" do
    get :upload_avatar
    assert_response :success
  end

  test "should get upload_avatar_save" do
    get :upload_avatar_save
    assert_response :success
  end

end
