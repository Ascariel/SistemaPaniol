require 'test_helper'

class ProductosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get productos_index_url
    assert_response :success
  end

  test "should get new" do
    get productos_new_url
    assert_response :success
  end

end
