require 'test_helper'

class Admins::RequestsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_requests_index_url
    assert_response :success
  end

end
