require 'test_helper'

class ViewerAccessesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @viewer_access = viewer_accesses(:one)
  end

  test "should get index" do
    get viewer_accesses_url
    assert_response :success
  end

  test "should get new" do
    get new_viewer_access_url
    assert_response :success
  end

  test "should create viewer_access" do
    assert_difference('ViewerAccess.count') do
      post viewer_accesses_url, params: { viewer_access: {  } }
    end

    assert_redirected_to viewer_access_url(ViewerAccess.last)
  end

  test "should show viewer_access" do
    get viewer_access_url(@viewer_access)
    assert_response :success
  end

  test "should get edit" do
    get edit_viewer_access_url(@viewer_access)
    assert_response :success
  end

  test "should update viewer_access" do
    patch viewer_access_url(@viewer_access), params: { viewer_access: {  } }
    assert_redirected_to viewer_access_url(@viewer_access)
  end

  test "should destroy viewer_access" do
    assert_difference('ViewerAccess.count', -1) do
      delete viewer_access_url(@viewer_access)
    end

    assert_redirected_to viewer_accesses_url
  end
end
