require 'test_helper'

class TopicsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get topics_index_url
    assert_response :success
  end

  test "should get create" do
    get topics_create_url
    assert_response :success
  end

  test "should get edit" do
    get topics_edit_url
    assert_response :success
  end

  test "should get update" do
    get topics_update_url
    assert_response :success
  end

  test "should get delete" do
    get topics_delete_url
    assert_response :success
  end

end
