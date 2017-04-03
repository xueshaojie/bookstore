require 'test_helper'

class WelocmeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get welocme_index_url
    assert_response :success
  end

end
