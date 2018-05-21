require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_sessions_path
    assert_response :success
  end

  # test "should get create" do
  #   get sessions_path(method: post)
  #   assert_response :success
  # end

  # test "should get destroy" do
  #   get sessions_path("delete")#, method: :delete

  #   assert_response :success
  # end

end
