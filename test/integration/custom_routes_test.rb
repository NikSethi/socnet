require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
  test "that the /signin route opens the signin page" do
  	get '/signin'
  	assert_response :success
  end

  test "that the /signout route opens the signout page" do
  	get '/signout'
  	assert_response :redirect
  	assert_redirected_to '/'
  end

  test "that the /register route opens the register page" do
  	get '/register'
  	assert_response :success
  end
end
