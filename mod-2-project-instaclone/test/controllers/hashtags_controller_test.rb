require 'test_helper'

class HashtagsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get hashtags_show_url
    assert_response :success
  end

  test "should get new" do
    get hashtags_new_url
    assert_response :success
  end

  test "should get edit" do
    get hashtags_edit_url
    assert_response :success
  end

  test "should get create" do
    get hashtags_create_url
    assert_response :success
  end

  test "should get update" do
    get hashtags_update_url
    assert_response :success
  end

  test "should get delete" do
    get hashtags_delete_url
    assert_response :success
  end

end
