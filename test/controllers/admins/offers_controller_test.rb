require 'test_helper'

class Admins::OffersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_offers_index_url
    assert_response :success
  end

end
