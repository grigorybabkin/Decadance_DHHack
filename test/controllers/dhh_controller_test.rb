require 'test_helper'

class DhhControllerTest < ActionDispatch::IntegrationTest
  test "should get home_page" do
    get dhh_home_page_url
    assert_response :success
  end

  test "should get reader" do
    get dhh_reader_url
    assert_response :success
  end

end
