require 'test_helper'

class UserClicksTest < ActionDispatch::IntegrationTest
  
  test "user visits and clicks a shift button" do
    # Visits site
    get '/'
    assert_response :success
    
    # Clicks a shift button
    post '/', :button => 'Left'
    assert_response :success
  end
  
end
